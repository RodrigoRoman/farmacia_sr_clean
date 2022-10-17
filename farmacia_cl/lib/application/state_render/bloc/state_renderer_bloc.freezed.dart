// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_renderer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateRendererEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateRendererEventCopyWith<$Res> {
  factory $StateRendererEventCopyWith(
          StateRendererEvent value, $Res Function(StateRendererEvent) then) =
      _$StateRendererEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateRendererEventCopyWithImpl<$Res>
    implements $StateRendererEventCopyWith<$Res> {
  _$StateRendererEventCopyWithImpl(this._value, this._then);

  final StateRendererEvent _value;
  // ignore: unused_field
  final $Res Function(StateRendererEvent) _then;
}

/// @nodoc
abstract class _$$PopUpSuccessCopyWith<$Res> {
  factory _$$PopUpSuccessCopyWith(
          _$PopUpSuccess value, $Res Function(_$PopUpSuccess) then) =
      __$$PopUpSuccessCopyWithImpl<$Res>;
  $Res call({String title, String message});
}

/// @nodoc
class __$$PopUpSuccessCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$PopUpSuccessCopyWith<$Res> {
  __$$PopUpSuccessCopyWithImpl(
      _$PopUpSuccess _value, $Res Function(_$PopUpSuccess) _then)
      : super(_value, (v) => _then(v as _$PopUpSuccess));

  @override
  _$PopUpSuccess get _value => super._value as _$PopUpSuccess;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PopUpSuccess(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopUpSuccess implements PopUpSuccess {
  const _$PopUpSuccess(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'StateRendererEvent.popUpSuccess(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpSuccess &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PopUpSuccessCopyWith<_$PopUpSuccess> get copyWith =>
      __$$PopUpSuccessCopyWithImpl<_$PopUpSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpSuccess(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return popUpSuccess?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpSuccess != null) {
      return popUpSuccess(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return popUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpSuccess != null) {
      return popUpSuccess(this);
    }
    return orElse();
  }
}

abstract class PopUpSuccess implements StateRendererEvent {
  const factory PopUpSuccess(final String title, final String message) =
      _$PopUpSuccess;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$PopUpSuccessCopyWith<_$PopUpSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpErrorCopyWith<$Res> {
  factory _$$PopUpErrorCopyWith(
          _$PopUpError value, $Res Function(_$PopUpError) then) =
      __$$PopUpErrorCopyWithImpl<$Res>;
  $Res call({String title, String message});
}

/// @nodoc
class __$$PopUpErrorCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$PopUpErrorCopyWith<$Res> {
  __$$PopUpErrorCopyWithImpl(
      _$PopUpError _value, $Res Function(_$PopUpError) _then)
      : super(_value, (v) => _then(v as _$PopUpError));

  @override
  _$PopUpError get _value => super._value as _$PopUpError;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PopUpError(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopUpError implements PopUpError {
  const _$PopUpError(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'StateRendererEvent.popUpError(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpError &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PopUpErrorCopyWith<_$PopUpError> get copyWith =>
      __$$PopUpErrorCopyWithImpl<_$PopUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpError(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return popUpError?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpError != null) {
      return popUpError(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return popUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpError != null) {
      return popUpError(this);
    }
    return orElse();
  }
}

abstract class PopUpError implements StateRendererEvent {
  const factory PopUpError(final String title, final String message) =
      _$PopUpError;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$PopUpErrorCopyWith<_$PopUpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpServerErrorCopyWith<$Res> {
  factory _$$PopUpServerErrorCopyWith(
          _$PopUpServerError value, $Res Function(_$PopUpServerError) then) =
      __$$PopUpServerErrorCopyWithImpl<$Res>;
  $Res call({String title, String message});
}

/// @nodoc
class __$$PopUpServerErrorCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$PopUpServerErrorCopyWith<$Res> {
  __$$PopUpServerErrorCopyWithImpl(
      _$PopUpServerError _value, $Res Function(_$PopUpServerError) _then)
      : super(_value, (v) => _then(v as _$PopUpServerError));

  @override
  _$PopUpServerError get _value => super._value as _$PopUpServerError;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PopUpServerError(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopUpServerError implements PopUpServerError {
  const _$PopUpServerError(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'StateRendererEvent.popUpServerError(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpServerError &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PopUpServerErrorCopyWith<_$PopUpServerError> get copyWith =>
      __$$PopUpServerErrorCopyWithImpl<_$PopUpServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpServerError(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return popUpServerError?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpServerError != null) {
      return popUpServerError(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return popUpServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpServerError != null) {
      return popUpServerError(this);
    }
    return orElse();
  }
}

abstract class PopUpServerError implements StateRendererEvent {
  const factory PopUpServerError(final String title, final String message) =
      _$PopUpServerError;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$PopUpServerErrorCopyWith<_$PopUpServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpLoadingCopyWith<$Res> {
  factory _$$PopUpLoadingCopyWith(
          _$PopUpLoading value, $Res Function(_$PopUpLoading) then) =
      __$$PopUpLoadingCopyWithImpl<$Res>;
  $Res call({String title, String message});
}

/// @nodoc
class __$$PopUpLoadingCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$PopUpLoadingCopyWith<$Res> {
  __$$PopUpLoadingCopyWithImpl(
      _$PopUpLoading _value, $Res Function(_$PopUpLoading) _then)
      : super(_value, (v) => _then(v as _$PopUpLoading));

  @override
  _$PopUpLoading get _value => super._value as _$PopUpLoading;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PopUpLoading(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopUpLoading implements PopUpLoading {
  const _$PopUpLoading(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'StateRendererEvent.popUpLoading(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpLoading &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PopUpLoadingCopyWith<_$PopUpLoading> get copyWith =>
      __$$PopUpLoadingCopyWithImpl<_$PopUpLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpLoading(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return popUpLoading?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpLoading != null) {
      return popUpLoading(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return popUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpLoading != null) {
      return popUpLoading(this);
    }
    return orElse();
  }
}

abstract class PopUpLoading implements StateRendererEvent {
  const factory PopUpLoading(final String title, final String message) =
      _$PopUpLoading;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$PopUpLoadingCopyWith<_$PopUpLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullErrorSreenCopyWith<$Res> {
  factory _$$FullErrorSreenCopyWith(
          _$FullErrorSreen value, $Res Function(_$FullErrorSreen) then) =
      __$$FullErrorSreenCopyWithImpl<$Res>;
  $Res call({String title, String message});
}

/// @nodoc
class __$$FullErrorSreenCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$FullErrorSreenCopyWith<$Res> {
  __$$FullErrorSreenCopyWithImpl(
      _$FullErrorSreen _value, $Res Function(_$FullErrorSreen) _then)
      : super(_value, (v) => _then(v as _$FullErrorSreen));

  @override
  _$FullErrorSreen get _value => super._value as _$FullErrorSreen;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FullErrorSreen(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullErrorSreen implements FullErrorSreen {
  const _$FullErrorSreen(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'StateRendererEvent.fullErrorSreen(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullErrorSreen &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$FullErrorSreenCopyWith<_$FullErrorSreen> get copyWith =>
      __$$FullErrorSreenCopyWithImpl<_$FullErrorSreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return fullErrorSreen(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return fullErrorSreen?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (fullErrorSreen != null) {
      return fullErrorSreen(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return fullErrorSreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return fullErrorSreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (fullErrorSreen != null) {
      return fullErrorSreen(this);
    }
    return orElse();
  }
}

abstract class FullErrorSreen implements StateRendererEvent {
  const factory FullErrorSreen(final String title, final String message) =
      _$FullErrorSreen;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$FullErrorSreenCopyWith<_$FullErrorSreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentScreenCopyWith<$Res> {
  factory _$$ContentScreenCopyWith(
          _$ContentScreen value, $Res Function(_$ContentScreen) then) =
      __$$ContentScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentScreenCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$ContentScreenCopyWith<$Res> {
  __$$ContentScreenCopyWithImpl(
      _$ContentScreen _value, $Res Function(_$ContentScreen) _then)
      : super(_value, (v) => _then(v as _$ContentScreen));

  @override
  _$ContentScreen get _value => super._value as _$ContentScreen;
}

/// @nodoc

class _$ContentScreen implements ContentScreen {
  const _$ContentScreen();

  @override
  String toString() {
    return 'StateRendererEvent.contentScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContentScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return contentScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return contentScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (contentScreen != null) {
      return contentScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return contentScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return contentScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (contentScreen != null) {
      return contentScreen(this);
    }
    return orElse();
  }
}

abstract class ContentScreen implements StateRendererEvent {
  const factory ContentScreen() = _$ContentScreen;
}

/// @nodoc
abstract class _$$EmptySreenCopyWith<$Res> {
  factory _$$EmptySreenCopyWith(
          _$EmptySreen value, $Res Function(_$EmptySreen) then) =
      __$$EmptySreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptySreenCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res>
    implements _$$EmptySreenCopyWith<$Res> {
  __$$EmptySreenCopyWithImpl(
      _$EmptySreen _value, $Res Function(_$EmptySreen) _then)
      : super(_value, (v) => _then(v as _$EmptySreen));

  @override
  _$EmptySreen get _value => super._value as _$EmptySreen;
}

/// @nodoc

class _$EmptySreen implements EmptySreen {
  const _$EmptySreen();

  @override
  String toString() {
    return 'StateRendererEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptySreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message) popUpSuccess,
    required TResult Function(String title, String message) popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message) popUpLoading,
    required TResult Function(String title, String message) fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message)? popUpSuccess,
    TResult Function(String title, String message)? popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message)? popUpLoading,
    TResult Function(String title, String message)? fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptySreen implements StateRendererEvent {
  const factory EmptySreen() = _$EmptySreen;
}

/// @nodoc
mixin _$StateRendererState {
  String get message => throw _privateConstructorUsedError;
  Function get retryAction => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  StateRendererType get stateRender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateRendererStateCopyWith<StateRendererState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateRendererStateCopyWith<$Res> {
  factory $StateRendererStateCopyWith(
          StateRendererState value, $Res Function(StateRendererState) then) =
      _$StateRendererStateCopyWithImpl<$Res>;
  $Res call(
      {String message,
      Function retryAction,
      String title,
      StateRendererType stateRender});
}

/// @nodoc
class _$StateRendererStateCopyWithImpl<$Res>
    implements $StateRendererStateCopyWith<$Res> {
  _$StateRendererStateCopyWithImpl(this._value, this._then);

  final StateRendererState _value;
  // ignore: unused_field
  final $Res Function(StateRendererState) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? retryAction = freezed,
    Object? title = freezed,
    Object? stateRender = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      retryAction: retryAction == freezed
          ? _value.retryAction
          : retryAction // ignore: cast_nullable_to_non_nullable
              as Function,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stateRender: stateRender == freezed
          ? _value.stateRender
          : stateRender // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc
abstract class _$$_StateRendererStateCopyWith<$Res>
    implements $StateRendererStateCopyWith<$Res> {
  factory _$$_StateRendererStateCopyWith(_$_StateRendererState value,
          $Res Function(_$_StateRendererState) then) =
      __$$_StateRendererStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message,
      Function retryAction,
      String title,
      StateRendererType stateRender});
}

/// @nodoc
class __$$_StateRendererStateCopyWithImpl<$Res>
    extends _$StateRendererStateCopyWithImpl<$Res>
    implements _$$_StateRendererStateCopyWith<$Res> {
  __$$_StateRendererStateCopyWithImpl(
      _$_StateRendererState _value, $Res Function(_$_StateRendererState) _then)
      : super(_value, (v) => _then(v as _$_StateRendererState));

  @override
  _$_StateRendererState get _value => super._value as _$_StateRendererState;

  @override
  $Res call({
    Object? message = freezed,
    Object? retryAction = freezed,
    Object? title = freezed,
    Object? stateRender = freezed,
  }) {
    return _then(_$_StateRendererState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      retryAction: retryAction == freezed
          ? _value.retryAction
          : retryAction // ignore: cast_nullable_to_non_nullable
              as Function,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stateRender: stateRender == freezed
          ? _value.stateRender
          : stateRender // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$_StateRendererState implements _StateRendererState {
  const _$_StateRendererState(
      {required this.message,
      required this.retryAction,
      required this.title,
      required this.stateRender});

  @override
  final String message;
  @override
  final Function retryAction;
  @override
  final String title;
  @override
  final StateRendererType stateRender;

  @override
  String toString() {
    return 'StateRendererState(message: $message, retryAction: $retryAction, title: $title, stateRender: $stateRender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateRendererState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.retryAction, retryAction) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.stateRender, stateRender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(retryAction),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(stateRender));

  @JsonKey(ignore: true)
  @override
  _$$_StateRendererStateCopyWith<_$_StateRendererState> get copyWith =>
      __$$_StateRendererStateCopyWithImpl<_$_StateRendererState>(
          this, _$identity);
}

abstract class _StateRendererState implements StateRendererState {
  const factory _StateRendererState(
      {required final String message,
      required final Function retryAction,
      required final String title,
      required final StateRendererType stateRender}) = _$_StateRendererState;

  @override
  String get message;
  @override
  Function get retryAction;
  @override
  String get title;
  @override
  StateRendererType get stateRender;
  @override
  @JsonKey(ignore: true)
  _$$_StateRendererStateCopyWith<_$_StateRendererState> get copyWith =>
      throw _privateConstructorUsedError;
}
