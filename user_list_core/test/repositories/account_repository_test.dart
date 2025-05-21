import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:user_list_core/user_list_core.dart'; // For models, responses
import 'package:user_list_core/repositories/account_repository.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';

// Manual mock for ApiService
class MockApiService extends Mock implements ApiService {}

void main() {
  late AccountRepository accountRepository;
  late MockApiService mockApiService;

  setUp(() {
    mockApiService = MockApiService();
    accountRepository = AccountRepository(mockApiService);
  });

  group('AccountRepository auth tests', () {
    final signInModel = SignInModel(email: 'test@example.com', password: 'password');
    final successResponse = SignInResponse(token: 'fake_auth_token', refreshToken: 'fake_refresh_token');

    test('auth returns SignInResponse on successful API call', () async {
      // Arrange
      when(mockApiService.auth(signInModel)).thenAnswer((_) async => successResponse);

      // Act
      final result = await accountRepository.auth(signInModel: signInModel);

      // Assert
      expect(result, equals(successResponse));
      verify(mockApiService.auth(signInModel)).called(1);
    });

    test('auth throws exception when API call fails', () async {
      // Arrange
      final exception = Exception('API auth error');
      when(mockApiService.auth(signInModel)).thenThrow(exception);

      // Act & Assert
      expect(
        () => accountRepository.auth(signInModel: signInModel),
        throwsA(predicate((e) => e is Exception && e.toString() == exception.toString())),
      );
      verify(mockApiService.auth(signInModel)).called(1);
    });
  });

  group('AccountRepository refresh tests', () {
    final refreshModel = RefreshModel(refresh_token: 'old_refresh_token');
    final successResponse = SignInResponse(token: 'new_fake_auth_token', refreshToken: 'new_fake_refresh_token');

    test('refresh returns SignInResponse on successful API call', () async {
      // Arrange
      when(mockApiService.refresh(refreshModel)).thenAnswer((_) async => successResponse);

      // Act
      final result = await accountRepository.refresh(refreshModel: refreshModel);

      // Assert
      expect(result, equals(successResponse));
      verify(mockApiService.refresh(refreshModel)).called(1);
    });

    test('refresh throws exception when API call fails', () async {
      // Arrange
      final exception = Exception('API refresh error');
      when(mockApiService.refresh(refreshModel)).thenThrow(exception);

      // Act & Assert
      expect(
        () => accountRepository.refresh(refreshModel: refreshModel),
        throwsA(predicate((e) => e is Exception && e.toString() == exception.toString())),
      );
      verify(mockApiService.refresh(refreshModel)).called(1);
    });
  });
}
