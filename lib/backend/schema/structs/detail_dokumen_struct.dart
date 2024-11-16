// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailDokumenStruct extends BaseStruct {
  DetailDokumenStruct({
    String? namaDokumen,
    String? vendor,
    double? nominal,
    int? id,
  })  : _namaDokumen = namaDokumen,
        _vendor = vendor,
        _nominal = nominal,
        _id = id;

  // "nama_dokumen" field.
  String? _namaDokumen;
  String get namaDokumen => _namaDokumen ?? '';
  set namaDokumen(String? val) => _namaDokumen = val;

  bool hasNamaDokumen() => _namaDokumen != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "nominal" field.
  double? _nominal;
  double get nominal => _nominal ?? 0.0;
  set nominal(double? val) => _nominal = val;

  void incrementNominal(double amount) => nominal = nominal + amount;

  bool hasNominal() => _nominal != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static DetailDokumenStruct fromMap(Map<String, dynamic> data) =>
      DetailDokumenStruct(
        namaDokumen: data['nama_dokumen'] as String?,
        vendor: data['vendor'] as String?,
        nominal: castToType<double>(data['nominal']),
        id: castToType<int>(data['id']),
      );

  static DetailDokumenStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailDokumenStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nama_dokumen': _namaDokumen,
        'vendor': _vendor,
        'nominal': _nominal,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nama_dokumen': serializeParam(
          _namaDokumen,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'nominal': serializeParam(
          _nominal,
          ParamType.double,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static DetailDokumenStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailDokumenStruct(
        namaDokumen: deserializeParam(
          data['nama_dokumen'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        nominal: deserializeParam(
          data['nominal'],
          ParamType.double,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DetailDokumenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailDokumenStruct &&
        namaDokumen == other.namaDokumen &&
        vendor == other.vendor &&
        nominal == other.nominal &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([namaDokumen, vendor, nominal, id]);
}

DetailDokumenStruct createDetailDokumenStruct({
  String? namaDokumen,
  String? vendor,
  double? nominal,
  int? id,
}) =>
    DetailDokumenStruct(
      namaDokumen: namaDokumen,
      vendor: vendor,
      nominal: nominal,
      id: id,
    );
