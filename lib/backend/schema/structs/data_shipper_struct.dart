// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataShipperStruct extends BaseStruct {
  DataShipperStruct({
    String? shipper,
    String? alamat,
    List<String>? stuffingPlace,
    int? index,
  })  : _shipper = shipper,
        _alamat = alamat,
        _stuffingPlace = stuffingPlace,
        _index = index;

  // "shipper" field.
  String? _shipper;
  String get shipper => _shipper ?? '';
  set shipper(String? val) => _shipper = val;

  bool hasShipper() => _shipper != null;

  // "alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  set alamat(String? val) => _alamat = val;

  bool hasAlamat() => _alamat != null;

  // "stuffing_place" field.
  List<String>? _stuffingPlace;
  List<String> get stuffingPlace => _stuffingPlace ?? const [];
  set stuffingPlace(List<String>? val) => _stuffingPlace = val;

  void updateStuffingPlace(Function(List<String>) updateFn) {
    updateFn(_stuffingPlace ??= []);
  }

  bool hasStuffingPlace() => _stuffingPlace != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static DataShipperStruct fromMap(Map<String, dynamic> data) =>
      DataShipperStruct(
        shipper: data['shipper'] as String?,
        alamat: data['alamat'] as String?,
        stuffingPlace: getDataList(data['stuffing_place']),
        index: castToType<int>(data['index']),
      );

  static DataShipperStruct? maybeFromMap(dynamic data) => data is Map
      ? DataShipperStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shipper': _shipper,
        'alamat': _alamat,
        'stuffing_place': _stuffingPlace,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shipper': serializeParam(
          _shipper,
          ParamType.String,
        ),
        'alamat': serializeParam(
          _alamat,
          ParamType.String,
        ),
        'stuffing_place': serializeParam(
          _stuffingPlace,
          ParamType.String,
          isList: true,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static DataShipperStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataShipperStruct(
        shipper: deserializeParam(
          data['shipper'],
          ParamType.String,
          false,
        ),
        alamat: deserializeParam(
          data['alamat'],
          ParamType.String,
          false,
        ),
        stuffingPlace: deserializeParam<String>(
          data['stuffing_place'],
          ParamType.String,
          true,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DataShipperStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataShipperStruct &&
        shipper == other.shipper &&
        alamat == other.alamat &&
        listEquality.equals(stuffingPlace, other.stuffingPlace) &&
        index == other.index;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([shipper, alamat, stuffingPlace, index]);
}

DataShipperStruct createDataShipperStruct({
  String? shipper,
  String? alamat,
  int? index,
}) =>
    DataShipperStruct(
      shipper: shipper,
      alamat: alamat,
      index: index,
    );
