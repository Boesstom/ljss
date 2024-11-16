// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiayaLangsungStruct extends BaseStruct {
  BiayaLangsungStruct({
    String? keterangan,
    double? nominal,
  })  : _keterangan = keterangan,
        _nominal = nominal;

  // "keterangan" field.
  String? _keterangan;
  String get keterangan => _keterangan ?? '';
  set keterangan(String? val) => _keterangan = val;

  bool hasKeterangan() => _keterangan != null;

  // "nominal" field.
  double? _nominal;
  double get nominal => _nominal ?? 0.0;
  set nominal(double? val) => _nominal = val;

  void incrementNominal(double amount) => nominal = nominal + amount;

  bool hasNominal() => _nominal != null;

  static BiayaLangsungStruct fromMap(Map<String, dynamic> data) =>
      BiayaLangsungStruct(
        keterangan: data['keterangan'] as String?,
        nominal: castToType<double>(data['nominal']),
      );

  static BiayaLangsungStruct? maybeFromMap(dynamic data) => data is Map
      ? BiayaLangsungStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'keterangan': _keterangan,
        'nominal': _nominal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'keterangan': serializeParam(
          _keterangan,
          ParamType.String,
        ),
        'nominal': serializeParam(
          _nominal,
          ParamType.double,
        ),
      }.withoutNulls;

  static BiayaLangsungStruct fromSerializableMap(Map<String, dynamic> data) =>
      BiayaLangsungStruct(
        keterangan: deserializeParam(
          data['keterangan'],
          ParamType.String,
          false,
        ),
        nominal: deserializeParam(
          data['nominal'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BiayaLangsungStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BiayaLangsungStruct &&
        keterangan == other.keterangan &&
        nominal == other.nominal;
  }

  @override
  int get hashCode => const ListEquality().hash([keterangan, nominal]);
}

BiayaLangsungStruct createBiayaLangsungStruct({
  String? keterangan,
  double? nominal,
}) =>
    BiayaLangsungStruct(
      keterangan: keterangan,
      nominal: nominal,
    );
