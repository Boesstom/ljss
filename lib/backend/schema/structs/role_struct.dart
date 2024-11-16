// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoleStruct extends BaseStruct {
  RoleStruct({
    Role? role,
  }) : _role = role;

  // "Role" field.
  Role? _role;
  Role? get role => _role;
  set role(Role? val) => _role = val;

  bool hasRole() => _role != null;

  static RoleStruct fromMap(Map<String, dynamic> data) => RoleStruct(
        role: deserializeEnum<Role>(data['Role']),
      );

  static RoleStruct? maybeFromMap(dynamic data) =>
      data is Map ? RoleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Role': _role?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Role': serializeParam(
          _role,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static RoleStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoleStruct(
        role: deserializeParam<Role>(
          data['Role'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'RoleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoleStruct && role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([role]);
}

RoleStruct createRoleStruct({
  Role? role,
}) =>
    RoleStruct(
      role: role,
    );
