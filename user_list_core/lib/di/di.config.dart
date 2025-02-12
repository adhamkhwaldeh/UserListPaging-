// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:user_list_core/api_services/api_service.dart' as _i873;
import 'package:user_list_core/api_services/connectivity/connectivity_request_retrier.dart'
    as _i470;
import 'package:user_list_core/di/logger_di.dart' as _i801;
import 'package:user_list_core/di/network_di.dart' as _i82;
import 'package:user_list_core/di/network_info_di.dart' as _i3;
import 'package:user_list_core/di/shared_preferences_di.dart' as _i1060;
import 'package:user_list_core/repositories/account_repository.dart' as _i58;
import 'package:user_list_core/repositories/general_repository.dart' as _i146;
import 'package:user_list_core/repositories/user_repository.dart' as _i1012;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesDi = _$SharedPreferencesDi();
    final loggerDi = _$LoggerDi();
    final networkDi = _$NetworkDi();
    final networkInfoDi = _$NetworkInfoDi();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesDi.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i974.Logger>(() => loggerDi.logger);
    gh.lazySingleton<_i361.Dio>(() => networkDi.dio());
    gh.lazySingleton<_i895.Connectivity>(() => networkInfoDi.connectivity);
    gh.lazySingleton<_i470.ConnectivityRequestRetrier>(
        () => networkInfoDi.retryConnection(gh<_i895.Connectivity>()));
    gh.lazySingleton<_i873.ApiService>(
        () => _i873.ApiService.create(gh<_i361.Dio>()));
    gh.lazySingleton<_i1012.UserRepository>(
        () => _i1012.UserRepository(gh<_i873.ApiService>()));
    gh.lazySingleton<_i58.AccountRepository>(
        () => _i58.AccountRepository(gh<_i873.ApiService>()));
    gh.lazySingleton<_i146.GeneralRepository>(
        () => _i146.GeneralRepository(gh<_i460.SharedPreferences>()));
    return this;
  }
}

class _$SharedPreferencesDi extends _i1060.SharedPreferencesDi {}

class _$LoggerDi extends _i801.LoggerDi {}

class _$NetworkDi extends _i82.NetworkDi {}

class _$NetworkInfoDi extends _i3.NetworkInfoDi {}
