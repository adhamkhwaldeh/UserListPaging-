import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:user_list_core/user_list_core.dart'; // For models, responses
import 'package:user_list_core/repositories/user_repository.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';

// Manual mock for ApiService
class MockApiService extends Mock implements ApiService {}

void main() {
  late UserRepository userRepository;
  late MockApiService mockApiService;

  setUp(() {
    mockApiService = MockApiService();
    userRepository = UserRepository(mockApiService);
  });

  group('UserRepository pageList tests (Get Users)', () {
    const testPage = 1;
    const testLimit = 10;
    final users = [
      User(id: '1', name: 'User One', email: 'one@test.com', gender: Gender.male, status: Status.active),
      User(id: '2', name: 'User Two', email: 'two@test.com', gender: Gender.female, status: Status.inactive),
    ];
    final successResponse = UserListResponse(data: users, total: 20, page: testPage, limit: testLimit);

    test('pageList returns UserListResponse on successful API call', () async {
      // Arrange
      when(mockApiService.getUsers(page: testPage, limit: testLimit))
          .thenAnswer((_) async => successResponse);

      // Act
      final result = await userRepository.pageList(testPage, testLimit);

      // Assert
      expect(result, equals(successResponse));
      verify(mockApiService.getUsers(page: testPage, limit: testLimit)).called(1);
    });

    test('pageList throws exception when API call fails', () async {
      // Arrange
      final exception = Exception('API getUsers error');
      when(mockApiService.getUsers(page: testPage, limit: testLimit))
          .thenThrow(exception);

      // Act & Assert
      expect(
        () => userRepository.pageList(testPage, testLimit),
        throwsA(predicate((e) => e is Exception && e.toString() == exception.toString())),
      );
      verify(mockApiService.getUsers(page: testPage, limit: testLimit)).called(1);
    });
  });

  // Tests for getUserDetails and updateUserDetails are not implemented
  // because these methods do not exist in the current UserRepository or ApiService.
  group('UserRepository getUserDetails tests - SKIPPED', () {
    test('getUserDetails is not implemented', () {
      print('SKIPPED: getUserDetails is not implemented in UserRepository.');
      expect(true, isTrue);
    }, skip: true);
  });

  group('UserRepository updateUserDetails tests - SKIPPED', () {
    test('updateUserDetails is not implemented', () {
      print('SKIPPED: updateUserDetails is not implemented in UserRepository.');
      expect(true, isTrue);
    }, skip: true);
  });
}
