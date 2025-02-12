import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_list_core/bloc/base_event/base_event.dart';
import 'package:user_list_core/bloc/base_state/base_state.dart';

abstract class BaseBloc<T extends BaseEvent, G extends BaseState>
    extends Bloc<T, G> {
  BaseBloc(super.initialState) ;

  void dispose();
}
