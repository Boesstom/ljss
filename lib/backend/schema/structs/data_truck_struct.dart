// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTruckStruct extends BaseStruct {
  DataTruckStruct({
    String? nopol,
    String? driver,
    String? vendor,
    String? telepon,
    String? alamat,
  })  : _nopol = nopol,
        _driver = driver,
        _vendor = vendor,
        _telepon = telepon,
        _alamat = alamat;

  // "nopol" field.
  String? _nopol;
  String get nopol => _nopol ?? '';
  set nopol(String? val) => _nopol = val;

  bool hasNopol() => _nopol != null;

  // "driver" field.
  String? _driver;
  String get driver => _driver ?? '';
  set driver(String? val) => _driver = val;

  bool hasDriver() => _driver != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "telepon" field.
  String? _telepon;
  String get telepon => _telepon ?? '';
  set telepon(String? val) => _telepon = val;

  bool hasTelepon() => _telepon != null;

  // "alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  set alamat(String? val) => _alamat = val;

  bool hasAlamat() => _alamat != null;

  static DataTruckStruct fromMap(Map<String, dynamic> data) => DataTruckStruct(
        nopol: data['nopol'] as String?,
        driver: data['driver'] as String?,
        vendor: data['vendor'] as String?,
        telepon: data['telepon'] as String?,
        alamat: data['alamat'] as String?,
      );

  static DataTruckStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTruckStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nopol': _nopol,
        'driver': _driver,
        'vendor': _vendor,
        'telepon': _telepon,
        'alamat': _alamat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nopol': serializeParam(
          _nopol,
          ParamType.String,
        ),
        'driver': serializeParam(
          _driver,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'telepon': serializeParam(
          _telepon,
          ParamType.String,
        ),
        'alamat': serializeParam(
          _alamat,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataTruckStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataTruckStruct(
        nopol: deserializeParam(
          data['nopol'],
          ParamType.String,
          false,
        ),
        driver: deserializeParam(
          data['driver'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        telepon: deserializeParam(
          data['telepon'],
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
  String toString() => 'DataTruckStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataTruckStruct &&
        nopol == other.nopol &&
        driver == other.driver &&
        vendor == other.vendor &&
        telepon == other.telepon &&
        alamat == other.alamat;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nopol, driver, vendor, telepon, alamat]);
}

DataTruckStruct createDataTruckStruct({
  String? nopol,
  String? driver,
  String? vendor,
  String? telepon,
  String? alamat,
}) =>
    DataTruckStruct(
      nopol: nopol,
      driver: driver,
      vendor: vendor,
      telepon: telepon,
      alamat: alamat,
    );
