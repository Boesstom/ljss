// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LaporanStruct extends BaseStruct {
  LaporanStruct({
    Laporan? laporan,
  }) : _laporan = laporan;

  // "laporan" field.
  Laporan? _laporan;
  Laporan? get laporan => _laporan;
  set laporan(Laporan? val) => _laporan = val;

  bool hasLaporan() => _laporan != null;

  static LaporanStruct fromMap(Map<String, dynamic> data) => LaporanStruct(
        laporan: deserializeEnum<Laporan>(data['laporan']),
      );

  static LaporanStruct? maybeFromMap(dynamic data) =>
      data is Map ? LaporanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'laporan': _laporan?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'laporan': serializeParam(
          _laporan,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static LaporanStruct fromSerializableMap(Map<String, dynamic> data) =>
      LaporanStruct(
        laporan: deserializeParam<Laporan>(
          data['laporan'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'LaporanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LaporanStruct && laporan == other.laporan;
  }

  @override
  int get hashCode => const ListEquality().hash([laporan]);
}

LaporanStruct createLaporanStruct({
  Laporan? laporan,
}) =>
    LaporanStruct(
      laporan: laporan,
    );
