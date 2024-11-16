// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinanceStruct extends BaseStruct {
  FinanceStruct({
    Finance? finance,
  }) : _finance = finance;

  // "finance" field.
  Finance? _finance;
  Finance? get finance => _finance;
  set finance(Finance? val) => _finance = val;

  bool hasFinance() => _finance != null;

  static FinanceStruct fromMap(Map<String, dynamic> data) => FinanceStruct(
        finance: deserializeEnum<Finance>(data['finance']),
      );

  static FinanceStruct? maybeFromMap(dynamic data) =>
      data is Map ? FinanceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'finance': _finance?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'finance': serializeParam(
          _finance,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static FinanceStruct fromSerializableMap(Map<String, dynamic> data) =>
      FinanceStruct(
        finance: deserializeParam<Finance>(
          data['finance'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'FinanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FinanceStruct && finance == other.finance;
  }

  @override
  int get hashCode => const ListEquality().hash([finance]);
}

FinanceStruct createFinanceStruct({
  Finance? finance,
}) =>
    FinanceStruct(
      finance: finance,
    );
