// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> with DiagnosticableTreeMixin implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState<$T>.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> with DiagnosticableTreeMixin implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState<$T>.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements HomeState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {List<BannerModel> banners,
      List<ProductModel> products,
      List<ProductModel> saleProducts,
      String adImage});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? products = null,
    Object? saleProducts = null,
    Object? adImage = null,
  }) {
    return _then(_$SuccessImpl<T>(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      saleProducts: null == saleProducts
          ? _value._saleProducts
          : saleProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      adImage: null == adImage
          ? _value.adImage
          : adImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> with DiagnosticableTreeMixin implements Success<T> {
  const _$SuccessImpl(
      {required final List<BannerModel> banners,
      required final List<ProductModel> products,
      required final List<ProductModel> saleProducts,
      required this.adImage})
      : _banners = banners,
        _products = products,
        _saleProducts = saleProducts;

  final List<BannerModel> _banners;
  @override
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductModel> _saleProducts;
  @override
  List<ProductModel> get saleProducts {
    if (_saleProducts is EqualUnmodifiableListView) return _saleProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleProducts);
  }

  @override
  final String adImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.success(banners: $banners, products: $products, saleProducts: $saleProducts, adImage: $adImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.success'))
      ..add(DiagnosticsProperty('banners', banners))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('saleProducts', saleProducts))
      ..add(DiagnosticsProperty('adImage', adImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._saleProducts, _saleProducts) &&
            (identical(other.adImage, adImage) || other.adImage == adImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_saleProducts),
      adImage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return success(banners, products, saleProducts, adImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return success?.call(banners, products, saleProducts, adImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(banners, products, saleProducts, adImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements HomeState<T> {
  const factory Success(
      {required final List<BannerModel> banners,
      required final List<ProductModel> products,
      required final List<ProductModel> saleProducts,
      required final String adImage}) = _$SuccessImpl<T>;

  List<BannerModel> get banners;
  List<ProductModel> get products;
  List<ProductModel> get saleProducts;
  String get adImage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> with DiagnosticableTreeMixin implements Error<T> {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements HomeState<T> {
  const factory Error({required final String error}) = _$ErrorImpl<T>;

  String get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<T, $Res> {
  factory _$$SearchLoadingImplCopyWith(_$SearchLoadingImpl<T> value,
          $Res Function(_$SearchLoadingImpl<T>) then) =
      __$$SearchLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SearchLoadingImpl<T>>
    implements _$$SearchLoadingImplCopyWith<T, $Res> {
  __$$SearchLoadingImplCopyWithImpl(_$SearchLoadingImpl<T> _value,
      $Res Function(_$SearchLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl<T>
    with DiagnosticableTreeMixin
    implements SearchLoading<T> {
  const _$SearchLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.searchLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState<$T>.searchLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading<T> implements HomeState<T> {
  const factory SearchLoading() = _$SearchLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<T, $Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl<T> value,
          $Res Function(_$SearchSuccessImpl<T>) then) =
      __$$SearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<ProductModel> productSearchList});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SearchSuccessImpl<T>>
    implements _$$SearchSuccessImplCopyWith<T, $Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl<T> _value,
      $Res Function(_$SearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productSearchList = null,
  }) {
    return _then(_$SearchSuccessImpl<T>(
      productSearchList: null == productSearchList
          ? _value._productSearchList
          : productSearchList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements SearchSuccess<T> {
  const _$SearchSuccessImpl(
      {required final List<ProductModel> productSearchList})
      : _productSearchList = productSearchList;

  final List<ProductModel> _productSearchList;
  @override
  List<ProductModel> get productSearchList {
    if (_productSearchList is EqualUnmodifiableListView)
      return _productSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productSearchList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.searchSuccess(productSearchList: $productSearchList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.searchSuccess'))
      ..add(DiagnosticsProperty('productSearchList', productSearchList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._productSearchList, _productSearchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productSearchList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<T, _$SearchSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return searchSuccess(productSearchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return searchSuccess?.call(productSearchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(productSearchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess<T> implements HomeState<T> {
  const factory SearchSuccess(
          {required final List<ProductModel> productSearchList}) =
      _$SearchSuccessImpl<T>;

  List<ProductModel> get productSearchList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<T, $Res> {
  factory _$$SearchErrorImplCopyWith(_$SearchErrorImpl<T> value,
          $Res Function(_$SearchErrorImpl<T>) then) =
      __$$SearchErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SearchErrorImpl<T>>
    implements _$$SearchErrorImplCopyWith<T, $Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl<T> _value, $Res Function(_$SearchErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl<T>
    with DiagnosticableTreeMixin
    implements SearchError<T> {
  const _$SearchErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.searchError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.searchError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<T, _$SearchErrorImpl<T>> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<T, _$SearchErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<BannerModel> banners,
            List<ProductModel> products,
            List<ProductModel> saleProducts,
            String adImage)
        success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(List<ProductModel> productSearchList)
        searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return searchError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return searchError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners, List<ProductModel> products,
            List<ProductModel> saleProducts, String adImage)?
        success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(List<ProductModel> productSearchList)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class SearchError<T> implements HomeState<T> {
  const factory SearchError({required final String error}) =
      _$SearchErrorImpl<T>;

  String get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<T, _$SearchErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
