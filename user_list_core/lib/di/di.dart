import 'package:injectable/injectable.dart';
import 'package:user_list_core/di/di.config.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> init() => getIt.init();
