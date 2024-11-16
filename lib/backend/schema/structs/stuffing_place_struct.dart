// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StuffingPlaceStruct extends BaseStruct {
  StuffingPlaceStruct({
    List<String>? stuffingPlace,
  }) : _stuffingPlace = stuffingPlace;

  // "stuffingPlace" field.
  List<String>? _stuffingPlace;
  List<String> get stuffingPlace => _stuffingPlace ?? const [];
  set stuffingPlace(List<String>? val) => _stuffingPlace = val;

  void updateStuffingPlace(Function(List<String>) updateFn) {
    updateFn(_stuffingPlace ??= []);
  }

  bool hasStuffingPlace() => _stuffingPlace != null;

  static StuffingPlaceStruct fromMap(Map<String, dynamic> data) =>
      StuffingPlaceStruct(
        stuffingPlace: getDataList(data['stuffingPlace']),
      );

  static StuffingPlaceStruct? maybeFromMap(dynamic data) => data is Map
      ? StuffingPlaceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'stuffingPlace': _stuffingPlace,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'stuffingPlace': serializeParam(
          _stuffingPlace,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static StuffingPlaceStruct fromSerializableMap(Map<String, dynamic> data) =>
      StuffingPlaceStruct(
        stuffingPlace: deserializeParam<String>(
          data['stuffingPlace'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'StuffingPlaceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StuffingPlaceStruct &&
        listEquality.equals(stuffingPlace, other.stuffingPlace);
  }

  @override
  int get hashCode => const ListEquality().hash([stuffingPlace]);
}

StuffingPlaceStruct createStuffingPlaceStruct() => StuffingPlaceStruct();
