// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<T, $Res> {
  factory $BaseStateCopyWith(
          BaseState<T> value, $Res Function(BaseState<T>) then) =
      _$BaseStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<T, $Res> implements $BaseStateCopyWith<T, $Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  final BaseState<T> _value;
  // ignore: unused_field
  final $Res Function(BaseState<T>) _then;
}

/// @nodoc
abstract class _$$BaseStateInitialCopyWith<T, $Res> {
  factory _$$BaseStateInitialCopyWith(_$BaseStateInitial<T> value,
          $Res Function(_$BaseStateInitial<T>) then) =
      __$$BaseStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseStateInitialCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateInitialCopyWith<T, $Res> {
  __$$BaseStateInitialCopyWithImpl(
      _$BaseStateInitial<T> _value, $Res Function(_$BaseStateInitial<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateInitial<T>));

  @override
  _$BaseStateInitial<T> get _value => super._value as _$BaseStateInitial<T>;
}

/// @nodoc

class _$BaseStateInitial<T> implements BaseStateInitial<T> {
  const _$BaseStateInitial();

  @override
  String toString() {
    return 'BaseState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaseStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BaseStateInitial<T> implements BaseState<T> {
  const factory BaseStateInitial() = _$BaseStateInitial<T>;
}

/// @nodoc
abstract class _$$BaseStateProgressCopyWith<T, $Res> {
  factory _$$BaseStateProgressCopyWith(_$BaseStateProgress<T> value,
          $Res Function(_$BaseStateProgress<T>) then) =
      __$$BaseStateProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseStateProgressCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateProgressCopyWith<T, $Res> {
  __$$BaseStateProgressCopyWithImpl(_$BaseStateProgress<T> _value,
      $Res Function(_$BaseStateProgress<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateProgress<T>));

  @override
  _$BaseStateProgress<T> get _value => super._value as _$BaseStateProgress<T>;
}

/// @nodoc

class _$BaseStateProgress<T> implements BaseStateProgress<T> {
  const _$BaseStateProgress();

  @override
  String toString() {
    return 'BaseState<$T>.progress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaseStateProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class BaseStateProgress<T> implements BaseState<T> {
  const factory BaseStateProgress() = _$BaseStateProgress<T>;
}

/// @nodoc
abstract class _$$BaseStateProgressDismissCopyWith<T, $Res> {
  factory _$$BaseStateProgressDismissCopyWith(
          _$BaseStateProgressDismiss<T> value,
          $Res Function(_$BaseStateProgressDismiss<T>) then) =
      __$$BaseStateProgressDismissCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseStateProgressDismissCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateProgressDismissCopyWith<T, $Res> {
  __$$BaseStateProgressDismissCopyWithImpl(_$BaseStateProgressDismiss<T> _value,
      $Res Function(_$BaseStateProgressDismiss<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateProgressDismiss<T>));

  @override
  _$BaseStateProgressDismiss<T> get _value =>
      super._value as _$BaseStateProgressDismiss<T>;
}

/// @nodoc

class _$BaseStateProgressDismiss<T> implements BaseStateProgressDismiss<T> {
  const _$BaseStateProgressDismiss();

  @override
  String toString() {
    return 'BaseState<$T>.dismissProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateProgressDismiss<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return dismissProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return dismissProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (dismissProgress != null) {
      return dismissProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return dismissProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return dismissProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (dismissProgress != null) {
      return dismissProgress(this);
    }
    return orElse();
  }
}

abstract class BaseStateProgressDismiss<T> implements BaseState<T> {
  const factory BaseStateProgressDismiss() = _$BaseStateProgressDismiss<T>;
}

/// @nodoc
abstract class _$$BaseStateNoDataFoundCopyWith<T, $Res> {
  factory _$$BaseStateNoDataFoundCopyWith(_$BaseStateNoDataFound<T> value,
          $Res Function(_$BaseStateNoDataFound<T>) then) =
      __$$BaseStateNoDataFoundCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseStateNoDataFoundCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateNoDataFoundCopyWith<T, $Res> {
  __$$BaseStateNoDataFoundCopyWithImpl(_$BaseStateNoDataFound<T> _value,
      $Res Function(_$BaseStateNoDataFound<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateNoDataFound<T>));

  @override
  _$BaseStateNoDataFound<T> get _value =>
      super._value as _$BaseStateNoDataFound<T>;
}

/// @nodoc

class _$BaseStateNoDataFound<T> implements BaseStateNoDataFound<T> {
  const _$BaseStateNoDataFound();

  @override
  String toString() {
    return 'BaseState<$T>.noDataFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateNoDataFound<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return noDataFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return noDataFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return noDataFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return noDataFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound(this);
    }
    return orElse();
  }
}

abstract class BaseStateNoDataFound<T> implements BaseState<T> {
  const factory BaseStateNoDataFound() = _$BaseStateNoDataFound<T>;
}

/// @nodoc
abstract class _$$BaseStateNoInternetConnectionCopyWith<T, $Res> {
  factory _$$BaseStateNoInternetConnectionCopyWith(
          _$BaseStateNoInternetConnection<T> value,
          $Res Function(_$BaseStateNoInternetConnection<T>) then) =
      __$$BaseStateNoInternetConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseStateNoInternetConnectionCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateNoInternetConnectionCopyWith<T, $Res> {
  __$$BaseStateNoInternetConnectionCopyWithImpl(
      _$BaseStateNoInternetConnection<T> _value,
      $Res Function(_$BaseStateNoInternetConnection<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateNoInternetConnection<T>));

  @override
  _$BaseStateNoInternetConnection<T> get _value =>
      super._value as _$BaseStateNoInternetConnection<T>;
}

/// @nodoc

class _$BaseStateNoInternetConnection<T>
    implements BaseStateNoInternetConnection<T> {
  const _$BaseStateNoInternetConnection();

  @override
  String toString() {
    return 'BaseState<$T>.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateNoInternetConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class BaseStateNoInternetConnection<T> implements BaseState<T> {
  const factory BaseStateNoInternetConnection() =
      _$BaseStateNoInternetConnection<T>;
}

/// @nodoc
abstract class _$$BaseStateInternalServerErrorCopyWith<T, $Res> {
  factory _$$BaseStateInternalServerErrorCopyWith(
          _$BaseStateInternalServerError<T> value,
          $Res Function(_$BaseStateInternalServerError<T>) then) =
      __$$BaseStateInternalServerErrorCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$$BaseStateInternalServerErrorCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateInternalServerErrorCopyWith<T, $Res> {
  __$$BaseStateInternalServerErrorCopyWithImpl(
      _$BaseStateInternalServerError<T> _value,
      $Res Function(_$BaseStateInternalServerError<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateInternalServerError<T>));

  @override
  _$BaseStateInternalServerError<T> get _value =>
      super._value as _$BaseStateInternalServerError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$BaseStateInternalServerError<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseStateInternalServerError<T>
    implements BaseStateInternalServerError<T> {
  const _$BaseStateInternalServerError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BaseState<$T>.internalServerError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateInternalServerError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$BaseStateInternalServerErrorCopyWith<T, _$BaseStateInternalServerError<T>>
      get copyWith => __$$BaseStateInternalServerErrorCopyWithImpl<T,
          _$BaseStateInternalServerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return internalServerError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return internalServerError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class BaseStateInternalServerError<T> implements BaseState<T> {
  const factory BaseStateInternalServerError({required final String error}) =
      _$BaseStateInternalServerError<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$BaseStateInternalServerErrorCopyWith<T, _$BaseStateInternalServerError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseStateFailureCopyWith<T, $Res> {
  factory _$$BaseStateFailureCopyWith(_$BaseStateFailure<T> value,
          $Res Function(_$BaseStateFailure<T>) then) =
      __$$BaseStateFailureCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$$BaseStateFailureCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateFailureCopyWith<T, $Res> {
  __$$BaseStateFailureCopyWithImpl(
      _$BaseStateFailure<T> _value, $Res Function(_$BaseStateFailure<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateFailure<T>));

  @override
  _$BaseStateFailure<T> get _value => super._value as _$BaseStateFailure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$BaseStateFailure<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseStateFailure<T> implements BaseStateFailure<T> {
  const _$BaseStateFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BaseState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateFailure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$BaseStateFailureCopyWith<T, _$BaseStateFailure<T>> get copyWith =>
      __$$BaseStateFailureCopyWithImpl<T, _$BaseStateFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BaseStateFailure<T> implements BaseState<T> {
  const factory BaseStateFailure({required final String error}) =
      _$BaseStateFailure<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$BaseStateFailureCopyWith<T, _$BaseStateFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseStateNotAuthorizeCopyWith<T, $Res> {
  factory _$$BaseStateNotAuthorizeCopyWith(_$BaseStateNotAuthorize<T> value,
          $Res Function(_$BaseStateNotAuthorize<T>) then) =
      __$$BaseStateNotAuthorizeCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$$BaseStateNotAuthorizeCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateNotAuthorizeCopyWith<T, $Res> {
  __$$BaseStateNotAuthorizeCopyWithImpl(_$BaseStateNotAuthorize<T> _value,
      $Res Function(_$BaseStateNotAuthorize<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateNotAuthorize<T>));

  @override
  _$BaseStateNotAuthorize<T> get _value =>
      super._value as _$BaseStateNotAuthorize<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$BaseStateNotAuthorize<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseStateNotAuthorize<T> implements BaseStateNotAuthorize<T> {
  const _$BaseStateNotAuthorize({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BaseState<$T>.notAuthorize(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateNotAuthorize<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$BaseStateNotAuthorizeCopyWith<T, _$BaseStateNotAuthorize<T>>
      get copyWith =>
          __$$BaseStateNotAuthorizeCopyWithImpl<T, _$BaseStateNotAuthorize<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return notAuthorize(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return notAuthorize?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (notAuthorize != null) {
      return notAuthorize(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return notAuthorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return notAuthorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (notAuthorize != null) {
      return notAuthorize(this);
    }
    return orElse();
  }
}

abstract class BaseStateNotAuthorize<T> implements BaseState<T> {
  const factory BaseStateNotAuthorize({required final String error}) =
      _$BaseStateNotAuthorize<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$BaseStateNotAuthorizeCopyWith<T, _$BaseStateNotAuthorize<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseStateLoadedSuccessfullyCopyWith<T, $Res> {
  factory _$$BaseStateLoadedSuccessfullyCopyWith(
          _$BaseStateLoadedSuccessfully<T> value,
          $Res Function(_$BaseStateLoadedSuccessfully<T>) then) =
      __$$BaseStateLoadedSuccessfullyCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$BaseStateLoadedSuccessfullyCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateLoadedSuccessfullyCopyWith<T, $Res> {
  __$$BaseStateLoadedSuccessfullyCopyWithImpl(
      _$BaseStateLoadedSuccessfully<T> _value,
      $Res Function(_$BaseStateLoadedSuccessfully<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateLoadedSuccessfully<T>));

  @override
  _$BaseStateLoadedSuccessfully<T> get _value =>
      super._value as _$BaseStateLoadedSuccessfully<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BaseStateLoadedSuccessfully<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BaseStateLoadedSuccessfully<T>
    implements BaseStateLoadedSuccessfully<T> {
  const _$BaseStateLoadedSuccessfully({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'BaseState<$T>.loadedSuccessfully(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateLoadedSuccessfully<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$BaseStateLoadedSuccessfullyCopyWith<T, _$BaseStateLoadedSuccessfully<T>>
      get copyWith => __$$BaseStateLoadedSuccessfullyCopyWithImpl<T,
          _$BaseStateLoadedSuccessfully<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return loadedSuccessfully(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return loadedSuccessfully?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return loadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return loadedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class BaseStateLoadedSuccessfully<T> implements BaseState<T> {
  const factory BaseStateLoadedSuccessfully({required final T data}) =
      _$BaseStateLoadedSuccessfully<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$BaseStateLoadedSuccessfullyCopyWith<T, _$BaseStateLoadedSuccessfully<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseStateListLoadedSuccessfullyCopyWith<T, $Res> {
  factory _$$BaseStateListLoadedSuccessfullyCopyWith(
          _$BaseStateListLoadedSuccessfully<T> value,
          $Res Function(_$BaseStateListLoadedSuccessfully<T>) then) =
      __$$BaseStateListLoadedSuccessfullyCopyWithImpl<T, $Res>;
  $Res call({List<T> data, bool lastPage});
}

/// @nodoc
class __$$BaseStateListLoadedSuccessfullyCopyWithImpl<T, $Res>
    extends _$BaseStateCopyWithImpl<T, $Res>
    implements _$$BaseStateListLoadedSuccessfullyCopyWith<T, $Res> {
  __$$BaseStateListLoadedSuccessfullyCopyWithImpl(
      _$BaseStateListLoadedSuccessfully<T> _value,
      $Res Function(_$BaseStateListLoadedSuccessfully<T>) _then)
      : super(_value, (v) => _then(v as _$BaseStateListLoadedSuccessfully<T>));

  @override
  _$BaseStateListLoadedSuccessfully<T> get _value =>
      super._value as _$BaseStateListLoadedSuccessfully<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$BaseStateListLoadedSuccessfully<T>(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BaseStateListLoadedSuccessfully<T>
    implements BaseStateListLoadedSuccessfully<T> {
  const _$BaseStateListLoadedSuccessfully(
      {required final List<T> data, required this.lastPage})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool lastPage;

  @override
  String toString() {
    return 'BaseState<$T>.listLoadedSuccessfully(data: $data, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateListLoadedSuccessfully<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(lastPage));

  @JsonKey(ignore: true)
  @override
  _$$BaseStateListLoadedSuccessfullyCopyWith<T,
          _$BaseStateListLoadedSuccessfully<T>>
      get copyWith => __$$BaseStateListLoadedSuccessfullyCopyWithImpl<T,
          _$BaseStateListLoadedSuccessfully<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() dismissProgress,
    required TResult Function() noDataFound,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) internalServerError,
    required TResult Function(String error) failure,
    required TResult Function(String error) notAuthorize,
    required TResult Function(T data) loadedSuccessfully,
    required TResult Function(List<T> data, bool lastPage)
        listLoadedSuccessfully,
  }) {
    return listLoadedSuccessfully(data, lastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
  }) {
    return listLoadedSuccessfully?.call(data, lastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? dismissProgress,
    TResult Function()? noDataFound,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? internalServerError,
    TResult Function(String error)? failure,
    TResult Function(String error)? notAuthorize,
    TResult Function(T data)? loadedSuccessfully,
    TResult Function(List<T> data, bool lastPage)? listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (listLoadedSuccessfully != null) {
      return listLoadedSuccessfully(data, lastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseStateInitial<T> value) initial,
    required TResult Function(BaseStateProgress<T> value) progress,
    required TResult Function(BaseStateProgressDismiss<T> value)
        dismissProgress,
    required TResult Function(BaseStateNoDataFound<T> value) noDataFound,
    required TResult Function(BaseStateNoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(BaseStateInternalServerError<T> value)
        internalServerError,
    required TResult Function(BaseStateFailure<T> value) failure,
    required TResult Function(BaseStateNotAuthorize<T> value) notAuthorize,
    required TResult Function(BaseStateLoadedSuccessfully<T> value)
        loadedSuccessfully,
    required TResult Function(BaseStateListLoadedSuccessfully<T> value)
        listLoadedSuccessfully,
  }) {
    return listLoadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
  }) {
    return listLoadedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseStateInitial<T> value)? initial,
    TResult Function(BaseStateProgress<T> value)? progress,
    TResult Function(BaseStateProgressDismiss<T> value)? dismissProgress,
    TResult Function(BaseStateNoDataFound<T> value)? noDataFound,
    TResult Function(BaseStateNoInternetConnection<T> value)?
        noInternetConnection,
    TResult Function(BaseStateInternalServerError<T> value)?
        internalServerError,
    TResult Function(BaseStateFailure<T> value)? failure,
    TResult Function(BaseStateNotAuthorize<T> value)? notAuthorize,
    TResult Function(BaseStateLoadedSuccessfully<T> value)? loadedSuccessfully,
    TResult Function(BaseStateListLoadedSuccessfully<T> value)?
        listLoadedSuccessfully,
    required TResult orElse(),
  }) {
    if (listLoadedSuccessfully != null) {
      return listLoadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class BaseStateListLoadedSuccessfully<T> implements BaseState<T> {
  const factory BaseStateListLoadedSuccessfully(
      {required final List<T> data,
      required final bool lastPage}) = _$BaseStateListLoadedSuccessfully<T>;

  List<T> get data;
  bool get lastPage;
  @JsonKey(ignore: true)
  _$$BaseStateListLoadedSuccessfullyCopyWith<T,
          _$BaseStateListLoadedSuccessfully<T>>
      get copyWith => throw _privateConstructorUsedError;
}
