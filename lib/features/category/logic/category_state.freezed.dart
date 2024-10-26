// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoryState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$SuccessImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required final List<CategoryModel> categories})
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryState.success(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CategoryState {
  const factory Success({required final List<CategoryModel> categories}) =
      _$SuccessImpl;

  List<CategoryModel> get categories;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoryState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CategoryState {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductsLoadingImplCopyWith<$Res> {
  factory _$$CategoryProductsLoadingImplCopyWith(
          _$CategoryProductsLoadingImpl value,
          $Res Function(_$CategoryProductsLoadingImpl) then) =
      __$$CategoryProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryProductsLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryProductsLoadingImpl>
    implements _$$CategoryProductsLoadingImplCopyWith<$Res> {
  __$$CategoryProductsLoadingImplCopyWithImpl(
      _$CategoryProductsLoadingImpl _value,
      $Res Function(_$CategoryProductsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryProductsLoadingImpl implements CategoryProductsLoading {
  const _$CategoryProductsLoadingImpl();

  @override
  String toString() {
    return 'CategoryState.categoryProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return categoryProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return categoryProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsLoading != null) {
      return categoryProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoryProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoryProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsLoading != null) {
      return categoryProductsLoading(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsLoading implements CategoryState {
  const factory CategoryProductsLoading() = _$CategoryProductsLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryProductsSuccessImplCopyWith<$Res> {
  factory _$$CategoryProductsSuccessImplCopyWith(
          _$CategoryProductsSuccessImpl value,
          $Res Function(_$CategoryProductsSuccessImpl) then) =
      __$$CategoryProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class __$$CategoryProductsSuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryProductsSuccessImpl>
    implements _$$CategoryProductsSuccessImplCopyWith<$Res> {
  __$$CategoryProductsSuccessImplCopyWithImpl(
      _$CategoryProductsSuccessImpl _value,
      $Res Function(_$CategoryProductsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CategoryProductsSuccessImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$CategoryProductsSuccessImpl implements CategoryProductsSuccess {
  const _$CategoryProductsSuccessImpl(
      {required final List<ProductModel> products})
      : _products = products;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CategoryState.categoryProductsSuccess(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsSuccessImplCopyWith<_$CategoryProductsSuccessImpl>
      get copyWith => __$$CategoryProductsSuccessImplCopyWithImpl<
          _$CategoryProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return categoryProductsSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return categoryProductsSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsSuccess != null) {
      return categoryProductsSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoryProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoryProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsSuccess != null) {
      return categoryProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsSuccess implements CategoryState {
  const factory CategoryProductsSuccess(
          {required final List<ProductModel> products}) =
      _$CategoryProductsSuccessImpl;

  List<ProductModel> get products;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsSuccessImplCopyWith<_$CategoryProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryProductsErrorImplCopyWith<$Res> {
  factory _$$CategoryProductsErrorImplCopyWith(
          _$CategoryProductsErrorImpl value,
          $Res Function(_$CategoryProductsErrorImpl) then) =
      __$$CategoryProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoryProductsErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryProductsErrorImpl>
    implements _$$CategoryProductsErrorImplCopyWith<$Res> {
  __$$CategoryProductsErrorImplCopyWithImpl(_$CategoryProductsErrorImpl _value,
      $Res Function(_$CategoryProductsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoryProductsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryProductsErrorImpl implements CategoryProductsError {
  const _$CategoryProductsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoryState.categoryProductsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsErrorImplCopyWith<_$CategoryProductsErrorImpl>
      get copyWith => __$$CategoryProductsErrorImplCopyWithImpl<
          _$CategoryProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String error) error,
    required TResult Function() categoryProductsLoading,
    required TResult Function(List<ProductModel> products)
        categoryProductsSuccess,
    required TResult Function(String error) categoryProductsError,
  }) {
    return categoryProductsError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? categoryProductsLoading,
    TResult? Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult? Function(String error)? categoryProductsError,
  }) {
    return categoryProductsError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String error)? error,
    TResult Function()? categoryProductsLoading,
    TResult Function(List<ProductModel> products)? categoryProductsSuccess,
    TResult Function(String error)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsError != null) {
      return categoryProductsError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CategoryProductsLoading value)
        categoryProductsLoading,
    required TResult Function(CategoryProductsSuccess value)
        categoryProductsSuccess,
    required TResult Function(CategoryProductsError value)
        categoryProductsError,
  }) {
    return categoryProductsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult? Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult? Function(CategoryProductsError value)? categoryProductsError,
  }) {
    return categoryProductsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CategoryProductsLoading value)? categoryProductsLoading,
    TResult Function(CategoryProductsSuccess value)? categoryProductsSuccess,
    TResult Function(CategoryProductsError value)? categoryProductsError,
    required TResult orElse(),
  }) {
    if (categoryProductsError != null) {
      return categoryProductsError(this);
    }
    return orElse();
  }
}

abstract class CategoryProductsError implements CategoryState {
  const factory CategoryProductsError({required final String error}) =
      _$CategoryProductsErrorImpl;

  String get error;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsErrorImplCopyWith<_$CategoryProductsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
