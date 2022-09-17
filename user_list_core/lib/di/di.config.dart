// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:common_library/api_services/connectivity/connectivity_request_retrier.dart'
    as _i4;
import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../api_services/api_service.dart' as _i8;
import '../repositories/account_repository.dart' as _i11;
import '../repositories/general_repository.dart' as _i9;
import '../repositories/user_repository.dart' as _i10;
import 'logger_di.dart' as _i14;
import 'network_di.dart' as _i13;
import 'network_info_di.dart' as _i12;
import 'shared_preferences_di.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkInfoDi = _$NetworkInfoDi();
  final networkDi = _$NetworkDi();
  final loggerDi = _$LoggerDi();
  final sharedPreferencesDi = _$SharedPreferencesDi();
  gh.lazySingleton<_i3.Connectivity>(() => networkInfoDi.connectivity);
  gh.lazySingleton<_i4.ConnectivityRequestRetrier>(
      () => networkInfoDi.retryConnection(get<_i3.Connectivity>()));
  gh.lazySingleton<_i5.Dio>(() => networkDi.dio());
  gh.lazySingleton<_i6.Logger>(() => loggerDi.logger);
  await gh.factoryAsync<_i7.SharedPreferences>(
      () => sharedPreferencesDi.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i8.ApiService>(() => _i8.ApiService.create(get<_i5.Dio>()));
  gh.lazySingleton<_i9.GeneralRepository>(
      () => _i9.GeneralRepository(get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i10.UserRepository>(
      () => _i10.UserRepository(get<_i8.ApiService>()));
  gh.lazySingleton<_i11.AccountRepository>(
      () => _i11.AccountRepository(get<_i8.ApiService>()));
  return get;
}

class _$NetworkInfoDi extends _i12.NetworkInfoDi {}

class _$NetworkDi extends _i13.NetworkDi {}

class _$LoggerDi extends _i14.LoggerDi {}

class _$SharedPreferencesDi extends _i15.SharedPreferencesDi {}
