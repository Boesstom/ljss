// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataVendorStruct extends BaseStruct {
  DataVendorStruct({
    String? nama,
    String? alamat,
    String? jenisDokumen,
  })  : _nama = nama,
        _alamat = alamat,
        _jenisDokumen = jenisDokumen;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  set alamat(String? val) => _alamat = val;

  bool hasAlamat() => _alamat != null;

  // "jenis_dokumen" field.
  String? _jenisDokumen;
  String get jenisDokumen => _jenisDokumen ?? '';
  set jenisDokumen(String? val) => _jenisDokumen = val;

  bool hasJenisDokumen() => _jenisDokumen != null;

  static DataVendorStruct fromMap(Map<String, dynamic> data) =>
      DataVendorStruct(
        nama: data['nama'] as String?,
        alamat: data['alamat'] as String?,
        jenisDokumen: data['jenis_dokumen'] as String?,
      );

  static DataVendorStruct? maybeFromMap(dynamic data) => data is Map
      ? DataVendorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nama': _nama,
        'alamat': _alamat,
        'jenis_dokumen': _jenisDokumen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'alamat': serializeParam(
          _alamat,
          ParamType.String,
        ),
        'jenis_dokumen': serializeParam(
          _jenisDokumen,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataVendorStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataVendorStruct(
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        alamat: deserializeParam(
          data['alamat'],
          ParamType.String,
          false,
        ),
        jenisDokumen: deserializeParam(
          data['jenis_dokumen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataVendorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataVendorStruct &&
        nama == other.nama &&
        alamat == other.alamat &&
        jenisDokumen == other.jenisDokumen;
  }

  @override
  int get hashCode => const ListEquality().hash([nama, alamat, jenisDokumen]);
}

DataVendorStruct createDataVendorStruct({
  String? nama,
  String? alamat,
  String? jenisDokumen,
}) =>
    DataVendorStruct(
      nama: nama,
      alamat: alamat,
      jenisDokumen: jenisDokumen,
    );
