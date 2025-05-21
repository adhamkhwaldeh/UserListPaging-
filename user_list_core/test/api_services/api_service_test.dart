import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:user_list_core/user_list_core.dart'; // For models, responses, ApiService itself
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/api_services/api_configuration.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/data/models/user.dart';


// Manual mock for Dio
// Note: For a real project, generating mocks with build_runner is preferred.
// class MockDio extends Mock implements Dio {}
// Mockito cannot mock Dio directly in all cases due to complexities with extensions/final methods.
// A common approach is to mock the HttpClientAdapter or use a package like `http_mock_adapter`.
// For simplicity here, we'll try to mock Dio's methods directly. If it fails, we'd need a more
// robust mocking strategy for Dio in a real-world scenario.
// Update: Mocking Dio directly for basic methods like get/post usually works.
class MockDio extends Mock implements Dio {}

void main() {
  late ApiService apiService;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    // ApiService is abstract and relies on a factory `ApiService.create(dio)`
    // or the generated `_ApiService(dio)`.
    // We will test by constructing the concrete generated class `_ApiService`.
    // However, since we can't access `_ApiService` directly without importing the `.g.dart` file
    // (which might cause issues if it's not perfectly generated or available to the tool),
    // we'll rely on the factory method if possible, or assume direct instantiation for testing.
    // For this environment, we'll assume direct instantiation of the concrete class,
    // or that the factory `ApiService.create` correctly sets up the instance.
    // Let's try with the concrete class name pattern often used by Retrofit.
    apiService = _ApiService(mockDio, baseUrl: ApiConfiguration.baseUrl);
  });

  group('ApiService - auth tests', () {
    final signInModel = SignInModel(email: 'test@example.com', password: 'password');
    final responseData = {'token': 'fake_token', 'refresh_token': 'fake_refresh_token'};
    final successResponse = Response(
      data: responseData,
      statusCode: 200,
      requestOptions: RequestOptions(path: 'auth'),
    );
    final expectedDto = SignInResponse.fromJson(responseData);

    test('auth returns SignInResponse on successful POST', () async {
      // Arrange
      when(mockDio.post(
        '${ApiConfiguration.baseUrl}auth', // Ensure full URL if baseUrl is not automatically prepended by mock
        data: signInModel.toJson(),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer((_) async => successResponse);

      // Act
      final result = await apiService.auth(signInModel);

      // Assert
      expect(result.token, expectedDto.token);
      expect(result.refreshToken, expectedDto.refreshToken);
      verify(mockDio.post(
        '${ApiConfiguration.baseUrl}auth',
        data: signInModel.toJson(),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).called(1);
    });

    test('auth throws DioException when API POST fails', () async {
      // Arrange
      final dioException = DioException(
        requestOptions: RequestOptions(path: 'auth'),
        response: Response(data: 'Error', statusCode: 401, requestOptions: RequestOptions(path: 'auth')),
        type: DioExceptionType.badResponse,
      );
      when(mockDio.post(
        '${ApiConfiguration.baseUrl}auth',
        data: signInModel.toJson(),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenThrow(dioException);

      // Act & Assert
      expect(() => apiService.auth(signInModel), throwsA(isA<DioException>()));
    });
  });

  group('ApiService - refresh tests', () {
    final refreshModel = RefreshModel(refresh_token: 'old_token');
    final responseData = {'token': 'new_fake_token', 'refresh_token': 'new_fake_refresh_token'};
    final successResponse = Response(
      data: responseData,
      statusCode: 200,
      requestOptions: RequestOptions(path: 'refresh'),
    );
    final expectedDto = SignInResponse.fromJson(responseData);

    test('refresh returns SignInResponse on successful POST', () async {
      // Arrange
      when(mockDio.post(
        '${ApiConfiguration.baseUrl}refresh',
        data: refreshModel.toJson(),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer((_) async => successResponse);

      // Act
      final result = await apiService.refresh(refreshModel);

      // Assert
      expect(result.token, expectedDto.token);
      expect(result.refreshToken, expectedDto.refreshToken);
      verify(mockDio.post(
        '${ApiConfiguration.baseUrl}refresh',
        data: refreshModel.toJson(),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).called(1);
    });

    test('refresh throws DioException when API POST fails', () async {
      // Arrange
      final dioException = DioException(
        requestOptions: RequestOptions(path: 'refresh'),
        response: Response(data: 'Error', statusCode: 401, requestOptions: RequestOptions(path: 'refresh')),
        type: DioExceptionType.badResponse,
      );
      when(mockDio.post(
        '${ApiConfiguration.baseUrl}refresh',
        data: refreshModel.toJson(),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenThrow(dioException);

      // Act & Assert
      expect(() => apiService.refresh(refreshModel), throwsA(isA<DioException>()));
    });
  });

  group('ApiService - getUsers tests', () {
    const page = 1;
    const limit = 10;
    final usersData = [
      {'id': '1', 'name': 'User 1', 'email': 'user1@test.com', 'gender': 'male', 'status': 'active'},
      {'id': '2', 'name': 'User 2', 'email': 'user2@test.com', 'gender': 'female', 'status': 'inactive'},
    ];
    final responseData = {'page': page, 'limit': limit, 'total': 20, 'data': usersData};
    final successResponse = Response(
      data: responseData,
      statusCode: 200,
      requestOptions: RequestOptions(path: 'users'),
    );
    final expectedDto = UserListResponse.fromJson(responseData);

    test('getUsers returns UserListResponse on successful GET', () async {
      // Arrange
      when(mockDio.get(
        '${ApiConfiguration.baseUrl}users',
        queryParameters: {'page': page, 'limit': limit},
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer((_) async => successResponse);

      // Act
      final result = await apiService.getUsers(page: page, limit: limit);

      // Assert
      expect(result.page, expectedDto.page);
      expect(result.limit, expectedDto.limit);
      expect(result.total, expectedDto.total);
      expect(result.users.length, expectedDto.users.length);
      expect(result.users[0].id, expectedDto.users[0].id);
      verify(mockDio.get(
        '${ApiConfiguration.baseUrl}users',
        queryParameters: {'page': page, 'limit': limit},
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).called(1);
    });

    test('getUsers throws DioException when API GET fails', () async {
      // Arrange
      final dioException = DioException(
        requestOptions: RequestOptions(path: 'users'),
        response: Response(data: 'Error', statusCode: 500, requestOptions: RequestOptions(path: 'users')),
        type: DioExceptionType.badResponse,
      );
       when(mockDio.get(
        '${ApiConfiguration.baseUrl}users',
        queryParameters: {'page': page, 'limit': limit},
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenThrow(dioException);

      // Act & Assert
      expect(() => apiService.getUsers(page: page, limit: limit), throwsA(isA<DioException>()));
    });

    test('getUsers throws DioException on network error', () async {
      // Arrange
      final dioException = DioException(
        requestOptions: RequestOptions(path: 'users'),
        type: DioExceptionType.connectionTimeout, // Example of a network error
      );
      when(mockDio.get(
        '${ApiConfiguration.baseUrl}users',
        queryParameters: {'page': page, 'limit': limit},
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenThrow(dioException);

      // Act & Assert
      expect(() => apiService.getUsers(page: page, limit: limit), throwsA(isA<DioException>()));
    });
  });
}

// This is needed because ApiService is abstract and the tests need a concrete implementation.
// Normally, this class `_ApiService` would be generated by Retrofit in `api_service.g.dart`.
// We are defining a minimal version here for the tests to compile and run.
// In a real scenario, you would import the generated file.
class _ApiService extends ApiService {
  _ApiService(this.dio, {String? baseUrl}) {
    baseUrl ??= ApiConfiguration.baseUrl;
    this.options = Options(
      baseUrl: baseUrl,
      // connectTimeout: Duration(milliseconds: ApiConfiguration.connectTimeout),
      // receiveTimeout: Duration(milliseconds: ApiConfiguration.receiveTimeout),
    );
  }

  final Dio dio;
  late final Options options; // Store options for requests

  @override
  Future<SignInResponse> auth(@Body() SignInModel signInModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = signInModel.toJson();
    final _result = await dio.post<Map<String, dynamic>>(
        '${options.baseUrl}auth', // Using stored options.baseUrl
        queryParameters: queryParameters,
        options: options.copyWith(method: 'POST', headers: _headers, extra: _extra),
        data: _data);
    final value = SignInResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SignInResponse> refresh(@Body() RefreshModel refreshModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = refreshModel.toJson();
    final _result = await dio.post<Map<String, dynamic>>(
        '${options.baseUrl}refresh',
        queryParameters: queryParameters,
        options: options.copyWith(method: 'POST', headers: _headers, extra: _extra),
        data: _data);
    final value = SignInResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserListResponse> getUsers(
      {@Query("page") required int page,
      @Query("limit") int limit = ApiConfiguration.pagingSize}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{'page': page, 'limit': limit};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null; // For GET request, data is null
    final _result = await dio.get<Map<String, dynamic>>(
        '${options.baseUrl}users',
        queryParameters: queryParameters,
        options: options.copyWith(method: 'GET', headers: _headers, extra: _extra),
        data: _data);
    final value = UserListResponse.fromJson(_result.data!);
    return value;
  }
}
