import 'package:injectable/injectable.dart';
import 'package:user_list_core/di/di.config.dart';
import 'package:common_library/di/di.dart';
// import 'package:moor/moor.dart';

// final GetIt getIt = GetIt.instance;

//QueryExecutor will be for dedicated platform
// @injectableInit
// Future<void> init(QueryExecutor e) => $initGetIt(getIt, e);
//
@injectableInit
Future<void> init() => $initGetIt(getIt);
