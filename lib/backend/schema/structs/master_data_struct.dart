// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MasterDataStruct extends BaseStruct {
  MasterDataStruct({
    MasterData? masterData,
  }) : _masterData = masterData;

  // "master_data" field.
  MasterData? _masterData;
  MasterData? get masterData => _masterData;
  set masterData(MasterData? val) => _masterData = val;

  bool hasMasterData() => _masterData != null;

  static MasterDataStruct fromMap(Map<String, dynamic> data) =>
      MasterDataStruct(
        masterData: deserializeEnum<MasterData>(data['master_data']),
      );

  static MasterDataStruct? maybeFromMap(dynamic data) => data is Map
      ? MasterDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'master_data': _masterData?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'master_data': serializeParam(
          _masterData,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static MasterDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MasterDataStruct(
        masterData: deserializeParam<MasterData>(
          data['master_data'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'MasterDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MasterDataStruct && masterData == other.masterData;
  }

  @override
  int get hashCode => const ListEquality().hash([masterData]);
}

MasterDataStruct createMasterDataStruct({
  MasterData? masterData,
}) =>
    MasterDataStruct(
      masterData: masterData,
    );
