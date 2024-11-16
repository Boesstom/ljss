// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailInvoiceStruct extends BaseStruct {
  DetailInvoiceStruct({
    String? deskripsi,
    double? harga,
    int? kuantiti,
    double? total,
  })  : _deskripsi = deskripsi,
        _harga = harga,
        _kuantiti = kuantiti,
        _total = total;

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  set deskripsi(String? val) => _deskripsi = val;

  bool hasDeskripsi() => _deskripsi != null;

  // "harga" field.
  double? _harga;
  double get harga => _harga ?? 0.0;
  set harga(double? val) => _harga = val;

  void incrementHarga(double amount) => harga = harga + amount;

  bool hasHarga() => _harga != null;

  // "kuantiti" field.
  int? _kuantiti;
  int get kuantiti => _kuantiti ?? 0;
  set kuantiti(int? val) => _kuantiti = val;

  void incrementKuantiti(int amount) => kuantiti = kuantiti + amount;

  bool hasKuantiti() => _kuantiti != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static DetailInvoiceStruct fromMap(Map<String, dynamic> data) =>
      DetailInvoiceStruct(
        deskripsi: data['deskripsi'] as String?,
        harga: castToType<double>(data['harga']),
        kuantiti: castToType<int>(data['kuantiti']),
        total: castToType<double>(data['total']),
      );

  static DetailInvoiceStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailInvoiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'deskripsi': _deskripsi,
        'harga': _harga,
        'kuantiti': _kuantiti,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deskripsi': serializeParam(
          _deskripsi,
          ParamType.String,
        ),
        'harga': serializeParam(
          _harga,
          ParamType.double,
        ),
        'kuantiti': serializeParam(
          _kuantiti,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
      }.withoutNulls;

  static DetailInvoiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailInvoiceStruct(
        deskripsi: deserializeParam(
          data['deskripsi'],
          ParamType.String,
          false,
        ),
        harga: deserializeParam(
          data['harga'],
          ParamType.double,
          false,
        ),
        kuantiti: deserializeParam(
          data['kuantiti'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DetailInvoiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailInvoiceStruct &&
        deskripsi == other.deskripsi &&
        harga == other.harga &&
        kuantiti == other.kuantiti &&
        total == other.total;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([deskripsi, harga, kuantiti, total]);
}

DetailInvoiceStruct createDetailInvoiceStruct({
  String? deskripsi,
  double? harga,
  int? kuantiti,
  double? total,
}) =>
    DetailInvoiceStruct(
      deskripsi: deskripsi,
      harga: harga,
      kuantiti: kuantiti,
      total: total,
    );
