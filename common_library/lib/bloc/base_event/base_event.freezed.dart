// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseEvent<T, V> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEventCopyWith<T, V, $Res> {
  factory $BaseEventCopyWith(
          BaseEvent<T, V> value, $Res Function(BaseEvent<T, V>) then) =
      _$BaseEventCopyWithImpl<T, V, $Res>;
}

/// @nodoc
class _$BaseEventCopyWithImpl<T, V, $Res>
    implements $BaseEventCopyWith<T, V, $Res> {
  _$BaseEventCopyWithImpl(this._value, this._then);

  final BaseEvent<T, V> _value;
  // ignore: unused_field
  final $Res Function(BaseEvent<T, V>) _then;
}

/// @nodoc
abstract class _$$BaseEventLoadListCopyWith<T, V, $Res> {
  factory _$$BaseEventLoadListCopyWith(_$BaseEventLoadList<T, V> value,
          $Res Function(_$BaseEventLoadList<T, V>) then) =
      __$$BaseEventLoadListCopyWithImpl<T, V, $Res>;
  $Res call({dynamic payload});
}

/// @nodoc
class __$$BaseEventLoadListCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventLoadListCopyWith<T, V, $Res> {
  __$$BaseEventLoadListCopyWithImpl(_$BaseEventLoadList<T, V> _value,
      $Res Function(_$BaseEventLoadList<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventLoadList<T, V>));

  @override
  _$BaseEventLoadList<T, V> get _value =>
      super._value as _$BaseEventLoadList<T, V>;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$BaseEventLoadList<T, V>(
      payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BaseEventLoadList<T, V> implements BaseEventLoadList<T, V> {
  const _$BaseEventLoadList([this.payload = null]);

  @override
  @JsonKey()
  final dynamic payload;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.loadingList(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventLoadList<T, V> &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventLoadListCopyWith<T, V, _$BaseEventLoadList<T, V>> get copyWith =>
      __$$BaseEventLoadListCopyWithImpl<T, V, _$BaseEventLoadList<T, V>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return loadingList(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return loadingList?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (loadingList != null) {
      return loadingList(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return loadingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return loadingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (loadingList != null) {
      return loadingList(this);
    }
    return orElse();
  }
}

abstract class BaseEventLoadList<T, V> implements BaseEvent<T, V> {
  const factory BaseEventLoadList([final dynamic payload]) =
      _$BaseEventLoadList<T, V>;

  dynamic get payload;
  @JsonKey(ignore: true)
  _$$BaseEventLoadListCopyWith<T, V, _$BaseEventLoadList<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventLoadDetailsCopyWith<T, V, $Res> {
  factory _$$BaseEventLoadDetailsCopyWith(_$BaseEventLoadDetails<T, V> value,
          $Res Function(_$BaseEventLoadDetails<T, V>) then) =
      __$$BaseEventLoadDetailsCopyWithImpl<T, V, $Res>;
  $Res call({String id});
}

/// @nodoc
class __$$BaseEventLoadDetailsCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventLoadDetailsCopyWith<T, V, $Res> {
  __$$BaseEventLoadDetailsCopyWithImpl(_$BaseEventLoadDetails<T, V> _value,
      $Res Function(_$BaseEventLoadDetails<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventLoadDetails<T, V>));

  @override
  _$BaseEventLoadDetails<T, V> get _value =>
      super._value as _$BaseEventLoadDetails<T, V>;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$BaseEventLoadDetails<T, V>(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseEventLoadDetails<T, V> implements BaseEventLoadDetails<T, V> {
  const _$BaseEventLoadDetails(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.loadDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventLoadDetails<T, V> &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventLoadDetailsCopyWith<T, V, _$BaseEventLoadDetails<T, V>>
      get copyWith => __$$BaseEventLoadDetailsCopyWithImpl<T, V,
          _$BaseEventLoadDetails<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return loadDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return loadDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return loadDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return loadDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(this);
    }
    return orElse();
  }
}

abstract class BaseEventLoadDetails<T, V> implements BaseEvent<T, V> {
  const factory BaseEventLoadDetails(final String id) =
      _$BaseEventLoadDetails<T, V>;

  String get id;
  @JsonKey(ignore: true)
  _$$BaseEventLoadDetailsCopyWith<T, V, _$BaseEventLoadDetails<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventLoadPagingListCopyWith<T, V, $Res> {
  factory _$$BaseEventLoadPagingListCopyWith(
          _$BaseEventLoadPagingList<T, V> value,
          $Res Function(_$BaseEventLoadPagingList<T, V>) then) =
      __$$BaseEventLoadPagingListCopyWithImpl<T, V, $Res>;
  $Res call({V filter});
}

/// @nodoc
class __$$BaseEventLoadPagingListCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventLoadPagingListCopyWith<T, V, $Res> {
  __$$BaseEventLoadPagingListCopyWithImpl(
      _$BaseEventLoadPagingList<T, V> _value,
      $Res Function(_$BaseEventLoadPagingList<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventLoadPagingList<T, V>));

  @override
  _$BaseEventLoadPagingList<T, V> get _value =>
      super._value as _$BaseEventLoadPagingList<T, V>;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$BaseEventLoadPagingList<T, V>(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc

class _$BaseEventLoadPagingList<T, V> implements BaseEventLoadPagingList<T, V> {
  const _$BaseEventLoadPagingList(this.filter);

  @override
  final V filter;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.loadPagingList(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventLoadPagingList<T, V> &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventLoadPagingListCopyWith<T, V, _$BaseEventLoadPagingList<T, V>>
      get copyWith => __$$BaseEventLoadPagingListCopyWithImpl<T, V,
          _$BaseEventLoadPagingList<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return loadPagingList(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return loadPagingList?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (loadPagingList != null) {
      return loadPagingList(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return loadPagingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return loadPagingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (loadPagingList != null) {
      return loadPagingList(this);
    }
    return orElse();
  }
}

abstract class BaseEventLoadPagingList<T, V> implements BaseEvent<T, V> {
  const factory BaseEventLoadPagingList(final V filter) =
      _$BaseEventLoadPagingList<T, V>;

  V get filter;
  @JsonKey(ignore: true)
  _$$BaseEventLoadPagingListCopyWith<T, V, _$BaseEventLoadPagingList<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventManageCopyWith<T, V, $Res> {
  factory _$$BaseEventManageCopyWith(_$BaseEventManage<T, V> value,
          $Res Function(_$BaseEventManage<T, V>) then) =
      __$$BaseEventManageCopyWithImpl<T, V, $Res>;
  $Res call({T model});
}

/// @nodoc
class __$$BaseEventManageCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventManageCopyWith<T, V, $Res> {
  __$$BaseEventManageCopyWithImpl(_$BaseEventManage<T, V> _value,
      $Res Function(_$BaseEventManage<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventManage<T, V>));

  @override
  _$BaseEventManage<T, V> get _value => super._value as _$BaseEventManage<T, V>;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$BaseEventManage<T, V>(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BaseEventManage<T, V> implements BaseEventManage<T, V> {
  const _$BaseEventManage(this.model);

  @override
  final T model;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.manage(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventManage<T, V> &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventManageCopyWith<T, V, _$BaseEventManage<T, V>> get copyWith =>
      __$$BaseEventManageCopyWithImpl<T, V, _$BaseEventManage<T, V>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return manage(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return manage?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (manage != null) {
      return manage(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return manage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return manage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (manage != null) {
      return manage(this);
    }
    return orElse();
  }
}

abstract class BaseEventManage<T, V> implements BaseEvent<T, V> {
  const factory BaseEventManage(final T model) = _$BaseEventManage<T, V>;

  T get model;
  @JsonKey(ignore: true)
  _$$BaseEventManageCopyWith<T, V, _$BaseEventManage<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventManageForStringCopyWith<T, V, $Res> {
  factory _$$BaseEventManageForStringCopyWith(
          _$BaseEventManageForString<T, V> value,
          $Res Function(_$BaseEventManageForString<T, V>) then) =
      __$$BaseEventManageForStringCopyWithImpl<T, V, $Res>;
  $Res call({T model});
}

/// @nodoc
class __$$BaseEventManageForStringCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventManageForStringCopyWith<T, V, $Res> {
  __$$BaseEventManageForStringCopyWithImpl(
      _$BaseEventManageForString<T, V> _value,
      $Res Function(_$BaseEventManageForString<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventManageForString<T, V>));

  @override
  _$BaseEventManageForString<T, V> get _value =>
      super._value as _$BaseEventManageForString<T, V>;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$BaseEventManageForString<T, V>(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BaseEventManageForString<T, V>
    implements BaseEventManageForString<T, V> {
  const _$BaseEventManageForString(this.model);

  @override
  final T model;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.manageForString(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventManageForString<T, V> &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventManageForStringCopyWith<T, V, _$BaseEventManageForString<T, V>>
      get copyWith => __$$BaseEventManageForStringCopyWithImpl<T, V,
          _$BaseEventManageForString<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return manageForString(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return manageForString?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (manageForString != null) {
      return manageForString(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return manageForString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return manageForString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (manageForString != null) {
      return manageForString(this);
    }
    return orElse();
  }
}

abstract class BaseEventManageForString<T, V> implements BaseEvent<T, V> {
  const factory BaseEventManageForString(final T model) =
      _$BaseEventManageForString<T, V>;

  T get model;
  @JsonKey(ignore: true)
  _$$BaseEventManageForStringCopyWith<T, V, _$BaseEventManageForString<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventDeleteCopyWith<T, V, $Res> {
  factory _$$BaseEventDeleteCopyWith(_$BaseEventDelete<T, V> value,
          $Res Function(_$BaseEventDelete<T, V>) then) =
      __$$BaseEventDeleteCopyWithImpl<T, V, $Res>;
  $Res call({T model});
}

/// @nodoc
class __$$BaseEventDeleteCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventDeleteCopyWith<T, V, $Res> {
  __$$BaseEventDeleteCopyWithImpl(_$BaseEventDelete<T, V> _value,
      $Res Function(_$BaseEventDelete<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventDelete<T, V>));

  @override
  _$BaseEventDelete<T, V> get _value => super._value as _$BaseEventDelete<T, V>;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$BaseEventDelete<T, V>(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BaseEventDelete<T, V> implements BaseEventDelete<T, V> {
  const _$BaseEventDelete(this.model);

  @override
  final T model;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.delete(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventDelete<T, V> &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventDeleteCopyWith<T, V, _$BaseEventDelete<T, V>> get copyWith =>
      __$$BaseEventDeleteCopyWithImpl<T, V, _$BaseEventDelete<T, V>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return delete(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return delete?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class BaseEventDelete<T, V> implements BaseEvent<T, V> {
  const factory BaseEventDelete(final T model) = _$BaseEventDelete<T, V>;

  T get model;
  @JsonKey(ignore: true)
  _$$BaseEventDeleteCopyWith<T, V, _$BaseEventDelete<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventLoadPagingList2CopyWith<T, V, $Res> {
  factory _$$BaseEventLoadPagingList2CopyWith(
          _$BaseEventLoadPagingList2<T, V> value,
          $Res Function(_$BaseEventLoadPagingList2<T, V>) then) =
      __$$BaseEventLoadPagingList2CopyWithImpl<T, V, $Res>;
  $Res call({int page, int limit});
}

/// @nodoc
class __$$BaseEventLoadPagingList2CopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventLoadPagingList2CopyWith<T, V, $Res> {
  __$$BaseEventLoadPagingList2CopyWithImpl(
      _$BaseEventLoadPagingList2<T, V> _value,
      $Res Function(_$BaseEventLoadPagingList2<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventLoadPagingList2<T, V>));

  @override
  _$BaseEventLoadPagingList2<T, V> get _value =>
      super._value as _$BaseEventLoadPagingList2<T, V>;

  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$BaseEventLoadPagingList2<T, V>(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BaseEventLoadPagingList2<T, V>
    implements BaseEventLoadPagingList2<T, V> {
  const _$BaseEventLoadPagingList2(this.page, this.limit);

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.loadPagingList2(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventLoadPagingList2<T, V> &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventLoadPagingList2CopyWith<T, V, _$BaseEventLoadPagingList2<T, V>>
      get copyWith => __$$BaseEventLoadPagingList2CopyWithImpl<T, V,
          _$BaseEventLoadPagingList2<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return loadPagingList2(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return loadPagingList2?.call(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (loadPagingList2 != null) {
      return loadPagingList2(page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return loadPagingList2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return loadPagingList2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (loadPagingList2 != null) {
      return loadPagingList2(this);
    }
    return orElse();
  }
}

abstract class BaseEventLoadPagingList2<T, V> implements BaseEvent<T, V> {
  const factory BaseEventLoadPagingList2(final int page, final int limit) =
      _$BaseEventLoadPagingList2<T, V>;

  int get page;
  int get limit;
  @JsonKey(ignore: true)
  _$$BaseEventLoadPagingList2CopyWith<T, V, _$BaseEventLoadPagingList2<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventAuthCopyWith<T, V, $Res> {
  factory _$$BaseEventAuthCopyWith(_$BaseEventAuth<T, V> value,
          $Res Function(_$BaseEventAuth<T, V>) then) =
      __$$BaseEventAuthCopyWithImpl<T, V, $Res>;
  $Res call({String email});
}

/// @nodoc
class __$$BaseEventAuthCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventAuthCopyWith<T, V, $Res> {
  __$$BaseEventAuthCopyWithImpl(
      _$BaseEventAuth<T, V> _value, $Res Function(_$BaseEventAuth<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventAuth<T, V>));

  @override
  _$BaseEventAuth<T, V> get _value => super._value as _$BaseEventAuth<T, V>;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$BaseEventAuth<T, V>(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseEventAuth<T, V> implements BaseEventAuth<T, V> {
  const _$BaseEventAuth(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.auth(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventAuth<T, V> &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventAuthCopyWith<T, V, _$BaseEventAuth<T, V>> get copyWith =>
      __$$BaseEventAuthCopyWithImpl<T, V, _$BaseEventAuth<T, V>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return auth(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return auth?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class BaseEventAuth<T, V> implements BaseEvent<T, V> {
  const factory BaseEventAuth(final String email) = _$BaseEventAuth<T, V>;

  String get email;
  @JsonKey(ignore: true)
  _$$BaseEventAuthCopyWith<T, V, _$BaseEventAuth<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseEventRefreshCopyWith<T, V, $Res> {
  factory _$$BaseEventRefreshCopyWith(_$BaseEventRefresh<T, V> value,
          $Res Function(_$BaseEventRefresh<T, V>) then) =
      __$$BaseEventRefreshCopyWithImpl<T, V, $Res>;
  $Res call({String refresh_token});
}

/// @nodoc
class __$$BaseEventRefreshCopyWithImpl<T, V, $Res>
    extends _$BaseEventCopyWithImpl<T, V, $Res>
    implements _$$BaseEventRefreshCopyWith<T, V, $Res> {
  __$$BaseEventRefreshCopyWithImpl(_$BaseEventRefresh<T, V> _value,
      $Res Function(_$BaseEventRefresh<T, V>) _then)
      : super(_value, (v) => _then(v as _$BaseEventRefresh<T, V>));

  @override
  _$BaseEventRefresh<T, V> get _value =>
      super._value as _$BaseEventRefresh<T, V>;

  @override
  $Res call({
    Object? refresh_token = freezed,
  }) {
    return _then(_$BaseEventRefresh<T, V>(
      refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseEventRefresh<T, V> implements BaseEventRefresh<T, V> {
  const _$BaseEventRefresh(this.refresh_token);

  @override
  final String refresh_token;

  @override
  String toString() {
    return 'BaseEvent<$T, $V>.refresh(refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEventRefresh<T, V> &&
            const DeepCollectionEquality()
                .equals(other.refresh_token, refresh_token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(refresh_token));

  @JsonKey(ignore: true)
  @override
  _$$BaseEventRefreshCopyWith<T, V, _$BaseEventRefresh<T, V>> get copyWith =>
      __$$BaseEventRefreshCopyWithImpl<T, V, _$BaseEventRefresh<T, V>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic payload) loadingList,
    required TResult Function(String id) loadDetails,
    required TResult Function(V filter) loadPagingList,
    required TResult Function(T model) manage,
    required TResult Function(T model) manageForString,
    required TResult Function(T model) delete,
    required TResult Function(int page, int limit) loadPagingList2,
    required TResult Function(String email) auth,
    required TResult Function(String refresh_token) refresh,
  }) {
    return refresh(refresh_token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
  }) {
    return refresh?.call(refresh_token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic payload)? loadingList,
    TResult Function(String id)? loadDetails,
    TResult Function(V filter)? loadPagingList,
    TResult Function(T model)? manage,
    TResult Function(T model)? manageForString,
    TResult Function(T model)? delete,
    TResult Function(int page, int limit)? loadPagingList2,
    TResult Function(String email)? auth,
    TResult Function(String refresh_token)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(refresh_token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseEventLoadList<T, V> value) loadingList,
    required TResult Function(BaseEventLoadDetails<T, V> value) loadDetails,
    required TResult Function(BaseEventLoadPagingList<T, V> value)
        loadPagingList,
    required TResult Function(BaseEventManage<T, V> value) manage,
    required TResult Function(BaseEventManageForString<T, V> value)
        manageForString,
    required TResult Function(BaseEventDelete<T, V> value) delete,
    required TResult Function(BaseEventLoadPagingList2<T, V> value)
        loadPagingList2,
    required TResult Function(BaseEventAuth<T, V> value) auth,
    required TResult Function(BaseEventRefresh<T, V> value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseEventLoadList<T, V> value)? loadingList,
    TResult Function(BaseEventLoadDetails<T, V> value)? loadDetails,
    TResult Function(BaseEventLoadPagingList<T, V> value)? loadPagingList,
    TResult Function(BaseEventManage<T, V> value)? manage,
    TResult Function(BaseEventManageForString<T, V> value)? manageForString,
    TResult Function(BaseEventDelete<T, V> value)? delete,
    TResult Function(BaseEventLoadPagingList2<T, V> value)? loadPagingList2,
    TResult Function(BaseEventAuth<T, V> value)? auth,
    TResult Function(BaseEventRefresh<T, V> value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class BaseEventRefresh<T, V> implements BaseEvent<T, V> {
  const factory BaseEventRefresh(final String refresh_token) =
      _$BaseEventRefresh<T, V>;

  String get refresh_token;
  @JsonKey(ignore: true)
  _$$BaseEventRefreshCopyWith<T, V, _$BaseEventRefresh<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}
