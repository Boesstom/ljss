// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataHutangStruct extends BaseStruct {
  DataHutangStruct({
    String? deskirpsi,
    String? vendor,
    double? nominal,
    bool? status,
    List<String>? noContainer,
    String? noJob,
  })  : _deskirpsi = deskirpsi,
        _vendor = vendor,
        _nominal = nominal,
        _status = status,
        _noContainer = noContainer,
        _noJob = noJob;

  // "deskirpsi" field.
  String? _deskirpsi;
  String get deskirpsi => _deskirpsi ?? '';
  set deskirpsi(String? val) => _deskirpsi = val;

  bool hasDeskirpsi() => _deskirpsi != null;

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

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "no_container" field.
  List<String>? _noContainer;
  List<String> get noContainer => _noContainer ?? const [];
  set noContainer(List<String>? val) => _noContainer = val;

  void updateNoContainer(Function(List<String>) updateFn) {
    updateFn(_noContainer ??= []);
  }

  bool hasNoContainer() => _noContainer != null;

  // "no_job" field.
  String? _noJob;
  String get noJob => _noJob ?? '';
  set noJob(String? val) => _noJob = val;

  bool hasNoJob() => _noJob != null;

  static DataHutangStruct fromMap(Map<String, dynamic> data) =>
      DataHutangStruct(
        deskirpsi: data['deskirpsi'] as String?,
        vendor: data['vendor'] as String?,
        nominal: castToType<double>(data['nominal']),
        status: data['status'] as bool?,
        noContainer: getDataList(data['no_container']),
        noJob: data['no_job'] as String?,
      );

  static DataHutangStruct? maybeFromMap(dynamic data) => data is Map
      ? DataHutangStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'deskirpsi': _deskirpsi,
        'vendor': _vendor,
        'nominal': _nominal,
        'status': _status,
        'no_container': _noContainer,
        'no_job': _noJob,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deskirpsi': serializeParam(
          _deskirpsi,
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
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'no_container': serializeParam(
          _noContainer,
          ParamType.String,
          isList: true,
        ),
        'no_job': serializeParam(
          _noJob,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataHutangStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataHutangStruct(
        deskirpsi: deserializeParam(
          data['deskirpsi'],
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
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        noContainer: deserializeParam<String>(
          data['no_container'],
          ParamType.String,
          true,
        ),
        noJob: deserializeParam(
          data['no_job'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataHutangStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataHutangStruct &&
        deskirpsi == other.deskirpsi &&
        vendor == other.vendor &&
        nominal == other.nominal &&
        status == other.status &&
        listEquality.equals(noContainer, other.noContainer) &&
        noJob == other.noJob;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([deskirpsi, vendor, nominal, status, noContainer, noJob]);
}

DataHutangStruct createDataHutangStruct({
  String? deskirpsi,
  String? vendor,
  double? nominal,
  bool? status,
  String? noJob,
}) =>
    DataHutangStruct(
      deskirpsi: deskirpsi,
      vendor: vendor,
      nominal: nominal,
      status: status,
      noJob: noJob,
    );
