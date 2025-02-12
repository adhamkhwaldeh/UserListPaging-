import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_event.freezed.dart';

@freezed
class BaseEvent<T, V> with _$BaseEvent {
  const factory BaseEvent.loadingList([@Default(null) dynamic payload]) =
      BaseEventLoadList;

  const factory BaseEvent.loadDetails(String id) = BaseEventLoadDetails<T, V>;

  const factory BaseEvent.loadPagingList(V filter) =
      BaseEventLoadPagingList<T, V>;

  const factory BaseEvent.manage(T model) = BaseEventManage<T, V>;

  const factory BaseEvent.manageForString(T model) =
      BaseEventManageForString<T, V>;

  const factory BaseEvent.delete(T model) = BaseEventDelete<T, V>;

  const factory BaseEvent.loadPagingList2(int page, int limit) =
      BaseEventLoadPagingList2<T, V>;

  const factory BaseEvent.auth(String email) = BaseEventAuth;

  const factory BaseEvent.refresh(String refresh_token) = BaseEventRefresh;
}
