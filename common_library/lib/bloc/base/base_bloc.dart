import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common_library/bloc/base_event/base_event.dart';
import 'package:common_library/bloc/base_state/base_state.dart';

abstract class BaseBloc<T extends BaseEvent, G extends BaseState>
    extends Bloc<T, G> {
  BaseBloc(G initialState) : super(initialState);

  @override
  Stream<G> mapEventToState(T event) async* {}

  void dispose();
}
