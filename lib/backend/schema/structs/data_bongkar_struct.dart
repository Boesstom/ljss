// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataBongkarStruct extends BaseStruct {
  DataBongkarStruct({
    String? vendor,
    String? alamat,
  })  : _vendor = vendor,
        _alamat = alamat;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  set alamat(String? val) => _alamat = val;

  bool hasAlamat() => _alamat != null;

  static DataBongkarStruct fromMap(Map<String, dynamic> data) =>
      DataBongkarStruct(
        vendor: data['vendor'] as String?,
        alamat: data['alamat'] as String?,
      );

  static DataBongkarStruct? maybeFromMap(dynamic data) => data is Map
      ? DataBongkarStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vendor': _vendor,
        'alamat': _alamat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'alamat': serializeParam(
          _alamat,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataBongkarStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataBongkarStruct(
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        alamat: deserializeParam(
          data['alamat'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataBongkarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataBongkarStruct &&
        vendor == other.vendor &&
        alamat == other.alamat;
  }

  @override
  int get hashCode => const ListEquality().hash([vendor, alamat]);
}

DataBongkarStruct createDataBongkarStruct({
  String? vendor,
  String? alamat,
}) =>
    DataBongkarStruct(
      vendor: vendor,
      alamat: alamat,
    );
