// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataPartyStruct extends BaseStruct {
  DataPartyStruct({
    int? jumlah,
    String? ukuran,
  })  : _jumlah = jumlah,
        _ukuran = ukuran;

  // "jumlah" field.
  int? _jumlah;
  int get jumlah => _jumlah ?? 0;
  set jumlah(int? val) => _jumlah = val;

  void incrementJumlah(int amount) => jumlah = jumlah + amount;

  bool hasJumlah() => _jumlah != null;

  // "ukuran" field.
  String? _ukuran;
  String get ukuran => _ukuran ?? '';
  set ukuran(String? val) => _ukuran = val;

  bool hasUkuran() => _ukuran != null;

  static DataPartyStruct fromMap(Map<String, dynamic> data) => DataPartyStruct(
        jumlah: castToType<int>(data['jumlah']),
        ukuran: data['ukuran'] as String?,
      );

  static DataPartyStruct? maybeFromMap(dynamic data) => data is Map
      ? DataPartyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'jumlah': _jumlah,
        'ukuran': _ukuran,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'jumlah': serializeParam(
          _jumlah,
          ParamType.int,
        ),
        'ukuran': serializeParam(
          _ukuran,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataPartyStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataPartyStruct(
        jumlah: deserializeParam(
          data['jumlah'],
          ParamType.int,
          false,
        ),
        ukuran: deserializeParam(
          data['ukuran'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataPartyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataPartyStruct &&
        jumlah == other.jumlah &&
        ukuran == other.ukuran;
  }

  @override
  int get hashCode => const ListEquality().hash([jumlah, ukuran]);
}

DataPartyStruct createDataPartyStruct({
  int? jumlah,
  String? ukuran,
}) =>
    DataPartyStruct(
      jumlah: jumlah,
      ukuran: ukuran,
    );
