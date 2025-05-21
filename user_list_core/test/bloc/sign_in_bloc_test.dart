import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:user_list_core/user_list_core.dart'; // For models, bloc, states, events
import 'package:user_list_core/bloc/sign_in_bloc.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/repositories/implementations/iaccount_repository.dart';
import 'package:user_list_core/repositories/general_repository.dart';

// Manual mocks for AccountRepository and GeneralRepository
class MockAccountRepository extends Mock implements IAccountRepository {}

class MockGeneralRepository extends Mock implements GeneralRepository {}

void main() {
  group('SignInBloc Tests', () {
    late SignInBloc signInBloc;
    late MockAccountRepository mockAccountRepository;
    late MockGeneralRepository mockGeneralRepository;

    setUp(() {
      mockAccountRepository = MockAccountRepository();
      mockGeneralRepository = MockGeneralRepository();
      signInBloc = SignInBloc(mockAccountRepository, mockGeneralRepository);
    });

    tearDown(() {
      signInBloc.close();
    });

    test('initial state is BaseStateInitial', () {
      expect(signInBloc.state, const BaseStateInitial());
    });

    blocTest<SignInBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseStateLoadedSuccessfully] for successful sign in',
      build: () {
        final signInResponse = SignInResponse(token: 'fake_token', refreshToken: 'fake_refresh_token');
        when(mockAccountRepository.auth(signInModel: anyNamed('signInModel')))
            .thenAnswer((_) async => signInResponse);
        return signInBloc;
      },
      act: (bloc) => bloc.add(const BaseEventAuth(email: 'test@example.com')),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseStateLoadedSuccessfully>().having(
          (state) => (state.data as SignInResponse).token,
          'token',
          'fake_token',
        ),
      ],
    );

    blocTest<SignInBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseErrorState] when auth throws generic Exception',
      build: () {
        when(mockAccountRepository.auth(signInModel: anyNamed('signInModel')))
            .thenThrow(Exception('Generic error'));
        return signInBloc;
      },
      act: (bloc) => bloc.add(const BaseEventAuth(email: 'test@example.com')),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseErrorState>().having(
            (state) => state.message, 'message', contains('Exception: Generic error')), // BaseStateHelper might format this
      ],
    );
    
    // Example for a specific error type if BaseStateHelper handles it distinctly
    // For now, assuming BaseStateHelper.getEither wraps it into a generic BaseErrorState
    blocTest<SignInBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseErrorState] for network error on sign in',
      build: () {
        // Simulate a network-like error. DioException is common but we'll use a generic one
        // as BaseStateHelper.getEither seems to catch Exception.
        when(mockAccountRepository.auth(signInModel: anyNamed('signInModel')))
            .thenThrow(Exception('Network connection failed'));
        return signInBloc;
      },
      act: (bloc) => bloc.add(const BaseEventAuth(email: 'test@example.com')),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseErrorState>().having(
          (state) => state.message,
          'message',
          contains('Exception: Network connection failed'),
        ),
      ],
    );

    // Tests for BaseEventRefresh can be added similarly
    blocTest<SignInBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseStateLoadedSuccessfully] for successful token refresh',
      build: () {
        final refreshResponse = SignInResponse(token: 'new_fake_token', refreshToken: 'new_fake_refresh_token');
        when(mockAccountRepository.refresh(refreshModel: anyNamed('refreshModel')))
            .thenAnswer((_) async => refreshResponse);
        return signInBloc;
      },
      act: (bloc) => bloc.add(const BaseEventRefresh(refresh_token: 'old_refresh_token')),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseStateLoadedSuccessfully>().having(
          (state) => (state.data as SignInResponse).token,
          'token',
          'new_fake_token',
        ),
      ],
    );

    blocTest<SignInBloc, BaseState>(
      'emits [BaseStateProgress, BaseStateProgressDismiss, BaseErrorState] when token refresh throws Exception',
      build: () {
        when(mockAccountRepository.refresh(refreshModel: anyNamed('refreshModel')))
            .thenThrow(Exception('Refresh failed'));
        return signInBloc;
      },
      act: (bloc) => bloc.add(const BaseEventRefresh(refresh_token: 'old_refresh_token')),
      expect: () => [
        const BaseStateProgress(),
        const BaseStateProgressDismiss(),
        isA<BaseErrorState>().having(
          (state) => state.message,
          'message',
          contains('Exception: Refresh failed'),
        ),
      ],
    );

  });
}
