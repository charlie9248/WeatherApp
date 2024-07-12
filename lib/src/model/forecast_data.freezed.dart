// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastData _$ForecastDataFromJson(Map<String, dynamic> json) {
  return _ForecastData.fromJson(json);
}

/// @nodoc
mixin _$ForecastData {
  List<Forecast>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDataCopyWith<ForecastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDataCopyWith<$Res> {
  factory $ForecastDataCopyWith(
          ForecastData value, $Res Function(ForecastData) then) =
      _$ForecastDataCopyWithImpl<$Res, ForecastData>;
  @useResult
  $Res call({List<Forecast>? list});
}

/// @nodoc
class _$ForecastDataCopyWithImpl<$Res, $Val extends ForecastData>
    implements $ForecastDataCopyWith<$Res> {
  _$ForecastDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Forecast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastDataImplCopyWith<$Res>
    implements $ForecastDataCopyWith<$Res> {
  factory _$$ForecastDataImplCopyWith(
          _$ForecastDataImpl value, $Res Function(_$ForecastDataImpl) then) =
      __$$ForecastDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Forecast>? list});
}

/// @nodoc
class __$$ForecastDataImplCopyWithImpl<$Res>
    extends _$ForecastDataCopyWithImpl<$Res, _$ForecastDataImpl>
    implements _$$ForecastDataImplCopyWith<$Res> {
  __$$ForecastDataImplCopyWithImpl(
      _$ForecastDataImpl _value, $Res Function(_$ForecastDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$ForecastDataImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Forecast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDataImpl implements _ForecastData {
  const _$ForecastDataImpl({final List<Forecast>? list}) : _list = list;

  factory _$ForecastDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDataImplFromJson(json);

  final List<Forecast>? _list;
  @override
  List<Forecast>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ForecastData(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDataImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDataImplCopyWith<_$ForecastDataImpl> get copyWith =>
      __$$ForecastDataImplCopyWithImpl<_$ForecastDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDataImplToJson(
      this,
    );
  }
}

abstract class _ForecastData implements ForecastData {
  const factory _ForecastData({final List<Forecast>? list}) =
      _$ForecastDataImpl;

  factory _ForecastData.fromJson(Map<String, dynamic> json) =
      _$ForecastDataImpl.fromJson;

  @override
  List<Forecast>? get list;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDataImplCopyWith<_$ForecastDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
