// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataDokumenStruct extends BaseStruct {
  DataDokumenStruct({
    String? namaDokumen,
  }) : _namaDokumen = namaDokumen;

  // "nama_dokumen" field.
  String? _namaDokumen;
  String get namaDokumen => _namaDokumen ?? '';
  set namaDokumen(String? val) => _namaDokumen = val;

  bool hasNamaDokumen() => _namaDokumen != null;

  static DataDokumenStruct fromMap(Map<String, dynamic> data) =>
      DataDokumenStruct(
        namaDokumen: data['nama_dokumen'] as String?,
      );

  static DataDokumenStruct? maybeFromMap(dynamic data) => data is Map
      ? DataDokumenStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nama_dokumen': _namaDokumen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nama_dokumen': serializeParam(
          _namaDokumen,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataDokumenStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataDokumenStruct(
        namaDokumen: deserializeParam(
          data['nama_dokumen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataDokumenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataDokumenStruct && namaDokumen == other.namaDokumen;
  }

  @override
  int get hashCode => const ListEquality().hash([namaDokumen]);
}

DataDokumenStruct createDataDokumenStruct({
  String? namaDokumen,
}) =>
    DataDokumenStruct(
      namaDokumen: namaDokumen,
    );
