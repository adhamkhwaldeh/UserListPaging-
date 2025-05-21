import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:user_list_core/user_list_core.dart'; // For models, bloc, states, events
import 'package:user_list_core/bloc/user_bloc.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/repositories/implementations/iuser_repository.dart';

// Manual mock for IUserRepository
class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  group('UserBloc Tests', () {
    late UserBloc userBloc;
    late MockUserRepository mockUserRepository;

    // Default values for tests
    const int defaultPage = 1;
    const int defaultLimit = 10;

    setUp(() {
      mockUserRepository = MockUserRepository();
      userBloc = UserBloc(mockUserRepository);
    });

    tearDown(() {
      userBloc.close();
    });

    test('initial state is BaseStateInitial', () {
      expect(userBloc.state, const BaseStateInitial());
    });

    blocTest<UserBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseStateListLoadedSuccessfully] for successful first page load',
      build: () {
        final users = [User(id: '1', name: 'User 1')];
        final response = UserListResponse(data: users, total: 20); // total > page * limit
        when(mockUserRepository.pageList(defaultPage, defaultLimit))
            .thenAnswer((_) async => response);
        return userBloc;
      },
      act: (bloc) => bloc.add(const BaseEventLoadPagingList2(page: defaultPage, limit: defaultLimit)),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseStateListLoadedSuccessfully>()
            .having((state) => state.data, 'data', [User(id: '1', name: 'User 1')])
            .having((state) => state.lastPage, 'lastPage', false),
      ],
    );

    blocTest<UserBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseStateNoDataFound] when first page load returns empty list',
      build: () {
        final response = UserListResponse(data: [], total: 0);
        when(mockUserRepository.pageList(defaultPage, defaultLimit))
            .thenAnswer((_) async => response);
        return userBloc;
      },
      act: (bloc) => bloc.add(const BaseEventLoadPagingList2(page: defaultPage, limit: defaultLimit)),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        const BaseStateNoDataFound(),
      ],
    );

    blocTest<UserBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseErrorState] when pageList throws generic Exception',
      build: () {
        when(mockUserRepository.pageList(defaultPage, defaultLimit))
            .thenThrow(Exception('Generic error'));
        return userBloc;
      },
      act: (bloc) => bloc.add(const BaseEventLoadPagingList2(page: defaultPage, limit: defaultLimit)),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseErrorState>().having(
            (state) => state.message, 'message', contains('Exception: Generic error')),
      ],
    );

    // Pagination Tests
    blocTest<UserBloc, BaseState>(
      'emits BaseStateListLoadedSuccessfully with lastPage=true when all items are loaded',
      build: () {
        final users = [User(id: '1', name: 'User 1')];
        // total <= page * limit means it's the last page
        final response = UserListResponse(data: users, total: defaultLimit); 
        when(mockUserRepository.pageList(defaultPage, defaultLimit))
            .thenAnswer((_) async => response);
        return userBloc;
      },
      act: (bloc) => bloc.add(const BaseEventLoadPagingList2(page: defaultPage, limit: defaultLimit)),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseStateListLoadedSuccessfully>()
            .having((state) => state.data, 'data', users)
            .having((state) => state.lastPage, 'lastPage', true),
      ],
    );
    
    // Note: UserBloc does not accumulate pages. Each BaseEventLoadPagingList2 event
    // fetches a specific page and the resulting state BaseStateListLoadedSuccessfully
    // only contains the data for *that* specific page.
    // Therefore, testing accumulation of pages (e.g. page 1 data + page 2 data)
    // is not applicable to the current UserBloc implementation as it's designed.
    // The bloc would need internal state to hold all loaded users if accumulation was desired.

    // Test for a specific page number if relevant for logic within bloc (e.g. page > 1)
    blocTest<UserBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseStateListLoadedSuccessfully] for successful page 2 load',
      build: () {
        const pageToLoad = 2;
        final users = [User(id: '11', name: 'User 11')];
        // Assuming total items are more than one page, e.g., 2 * defaultLimit
        final response = UserListResponse(data: users, total: pageToLoad * defaultLimit + 5); 
        when(mockUserRepository.pageList(pageToLoad, defaultLimit))
            .thenAnswer((_) async => response);
        return userBloc;
      },
      act: (bloc) => bloc.add(const BaseEventLoadPagingList2(page: pageToLoad, limit: defaultLimit)),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseStateListLoadedSuccessfully>()
            .having((state) => state.data, 'data', users)
            .having((state) => state.lastPage, 'lastPage', false), // lastPage still false
      ],
    );

    blocTest<UserBloc, BaseState>(
      'emits BaseStateNoDataFound when a subsequent page load returns empty list',
      build: () {
        const pageToLoad = 3; // Assume page 1 and 2 had data
        final response = UserListResponse(data: [], total: (pageToLoad -1) * defaultLimit ); // Total indicates previous pages had data
        when(mockUserRepository.pageList(pageToLoad, defaultLimit))
            .thenAnswer((_) async => response);
        return userBloc;
      },
      act: (bloc) => bloc.add(const BaseEventLoadPagingList2(page: pageToLoad, limit: defaultLimit)),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        const BaseStateNoDataFound(), // Correctly emits NoDataFound for an empty page
      ],
    );

  });
}
