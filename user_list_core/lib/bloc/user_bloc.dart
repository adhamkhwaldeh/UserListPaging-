import 'dart:async';

import 'package:common_library/bloc/base/base_bloc.dart';
import 'package:common_library/bloc/base_event/base_event.dart';
import 'package:common_library/bloc/base_state/base_state.dart';
import 'package:common_library/bloc/base_state/base_state_observable.dart';
import 'package:common_library/bloc/base_state/base_state_observable2.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/repositories/user_repository.dart';

class UserBloc extends BaseBloc<BaseEvent, BaseState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(const BaseStateInitial());

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    yield* event.maybeMap(
      loadPagingList2: (value) {
        return BaseStateObservable2.observeRequestFunction<UserListResponse>(
            repository.pageList(value.page, value.limit));
      },
      orElse: () => BaseStateObservable.yieldOneState(const BaseState.initial()),
    );
  }

  @override
  void dispose() {}
}
