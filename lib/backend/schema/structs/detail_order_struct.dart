// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailOrderStruct extends BaseStruct {
  DetailOrderStruct({
    DataPartyStruct? dataParty,
    DataTruckStruct? dataTruck,
    List<String>? noContainer,
    int? id,
  })  : _dataParty = dataParty,
        _dataTruck = dataTruck,
        _noContainer = noContainer,
        _id = id;

  // "data_party" field.
  DataPartyStruct? _dataParty;
  DataPartyStruct get dataParty => _dataParty ?? DataPartyStruct();
  set dataParty(DataPartyStruct? val) => _dataParty = val;

  void updateDataParty(Function(DataPartyStruct) updateFn) {
    updateFn(_dataParty ??= DataPartyStruct());
  }

  bool hasDataParty() => _dataParty != null;

  // "data_truck" field.
  DataTruckStruct? _dataTruck;
  DataTruckStruct get dataTruck => _dataTruck ?? DataTruckStruct();
  set dataTruck(DataTruckStruct? val) => _dataTruck = val;

  void updateDataTruck(Function(DataTruckStruct) updateFn) {
    updateFn(_dataTruck ??= DataTruckStruct());
  }

  bool hasDataTruck() => _dataTruck != null;

  // "no_container" field.
  List<String>? _noContainer;
  List<String> get noContainer => _noContainer ?? const [];
  set noContainer(List<String>? val) => _noContainer = val;

  void updateNoContainer(Function(List<String>) updateFn) {
    updateFn(_noContainer ??= []);
  }

  bool hasNoContainer() => _noContainer != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static DetailOrderStruct fromMap(Map<String, dynamic> data) =>
      DetailOrderStruct(
        dataParty: DataPartyStruct.maybeFromMap(data['data_party']),
        dataTruck: DataTruckStruct.maybeFromMap(data['data_truck']),
        noContainer: getDataList(data['no_container']),
        id: castToType<int>(data['id']),
      );

  static DetailOrderStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailOrderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data_party': _dataParty?.toMap(),
        'data_truck': _dataTruck?.toMap(),
        'no_container': _noContainer,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data_party': serializeParam(
          _dataParty,
          ParamType.DataStruct,
        ),
        'data_truck': serializeParam(
          _dataTruck,
          ParamType.DataStruct,
        ),
        'no_container': serializeParam(
          _noContainer,
          ParamType.String,
          isList: true,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static DetailOrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailOrderStruct(
        dataParty: deserializeStructParam(
          data['data_party'],
          ParamType.DataStruct,
          false,
          structBuilder: DataPartyStruct.fromSerializableMap,
        ),
        dataTruck: deserializeStructParam(
          data['data_truck'],
          ParamType.DataStruct,
          false,
          structBuilder: DataTruckStruct.fromSerializableMap,
        ),
        noContainer: deserializeParam<String>(
          data['no_container'],
          ParamType.String,
          true,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DetailOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DetailOrderStruct &&
        dataParty == other.dataParty &&
        dataTruck == other.dataTruck &&
        listEquality.equals(noContainer, other.noContainer) &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dataParty, dataTruck, noContainer, id]);
}

DetailOrderStruct createDetailOrderStruct({
  DataPartyStruct? dataParty,
  DataTruckStruct? dataTruck,
  int? id,
}) =>
    DetailOrderStruct(
      dataParty: dataParty ?? DataPartyStruct(),
      dataTruck: dataTruck ?? DataTruckStruct(),
      id: id,
    );
