// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailBiayaLangsungStruct extends BaseStruct {
  DetailBiayaLangsungStruct({
    String? keterangan,
    double? nominal,
    int? kuantiti,
  })  : _keterangan = keterangan,
        _nominal = nominal,
        _kuantiti = kuantiti;

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

  // "kuantiti" field.
  int? _kuantiti;
  int get kuantiti => _kuantiti ?? 0;
  set kuantiti(int? val) => _kuantiti = val;

  void incrementKuantiti(int amount) => kuantiti = kuantiti + amount;

  bool hasKuantiti() => _kuantiti != null;

  static DetailBiayaLangsungStruct fromMap(Map<String, dynamic> data) =>
      DetailBiayaLangsungStruct(
        keterangan: data['keterangan'] as String?,
        nominal: castToType<double>(data['nominal']),
        kuantiti: castToType<int>(data['kuantiti']),
      );

  static DetailBiayaLangsungStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailBiayaLangsungStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'keterangan': _keterangan,
        'nominal': _nominal,
        'kuantiti': _kuantiti,
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
        'kuantiti': serializeParam(
          _kuantiti,
          ParamType.int,
        ),
      }.withoutNulls;

  static DetailBiayaLangsungStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DetailBiayaLangsungStruct(
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
        kuantiti: deserializeParam(
          data['kuantiti'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DetailBiayaLangsungStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailBiayaLangsungStruct &&
        keterangan == other.keterangan &&
        nominal == other.nominal &&
        kuantiti == other.kuantiti;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([keterangan, nominal, kuantiti]);
}

DetailBiayaLangsungStruct createDetailBiayaLangsungStruct({
  String? keterangan,
  double? nominal,
  int? kuantiti,
}) =>
    DetailBiayaLangsungStruct(
      keterangan: keterangan,
      nominal: nominal,
      kuantiti: kuantiti,
    );
