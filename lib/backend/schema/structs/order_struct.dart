// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderStruct extends BaseStruct {
  OrderStruct({
    int? no,
    String? invoiceShipper,
    String? noJob,
    String? dataShipper,
    DateTime? tanggalStuffing,
    Status? status,
  })  : _no = no,
        _invoiceShipper = invoiceShipper,
        _noJob = noJob,
        _dataShipper = dataShipper,
        _tanggalStuffing = tanggalStuffing,
        _status = status;

  // "no" field.
  int? _no;
  int get no => _no ?? 0;
  set no(int? val) => _no = val;

  void incrementNo(int amount) => no = no + amount;

  bool hasNo() => _no != null;

  // "invoice_shipper" field.
  String? _invoiceShipper;
  String get invoiceShipper => _invoiceShipper ?? '';
  set invoiceShipper(String? val) => _invoiceShipper = val;

  bool hasInvoiceShipper() => _invoiceShipper != null;

  // "no_job" field.
  String? _noJob;
  String get noJob => _noJob ?? '';
  set noJob(String? val) => _noJob = val;

  bool hasNoJob() => _noJob != null;

  // "data_shipper" field.
  String? _dataShipper;
  String get dataShipper => _dataShipper ?? '';
  set dataShipper(String? val) => _dataShipper = val;

  bool hasDataShipper() => _dataShipper != null;

  // "tanggal_stuffing" field.
  DateTime? _tanggalStuffing;
  DateTime? get tanggalStuffing => _tanggalStuffing;
  set tanggalStuffing(DateTime? val) => _tanggalStuffing = val;

  bool hasTanggalStuffing() => _tanggalStuffing != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  set status(Status? val) => _status = val;

  bool hasStatus() => _status != null;

  static OrderStruct fromMap(Map<String, dynamic> data) => OrderStruct(
        no: castToType<int>(data['no']),
        invoiceShipper: data['invoice_shipper'] as String?,
        noJob: data['no_job'] as String?,
        dataShipper: data['data_shipper'] as String?,
        tanggalStuffing: data['tanggal_stuffing'] as DateTime?,
        status: deserializeEnum<Status>(data['status']),
      );

  static OrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'no': _no,
        'invoice_shipper': _invoiceShipper,
        'no_job': _noJob,
        'data_shipper': _dataShipper,
        'tanggal_stuffing': _tanggalStuffing,
        'status': _status?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'no': serializeParam(
          _no,
          ParamType.int,
        ),
        'invoice_shipper': serializeParam(
          _invoiceShipper,
          ParamType.String,
        ),
        'no_job': serializeParam(
          _noJob,
          ParamType.String,
        ),
        'data_shipper': serializeParam(
          _dataShipper,
          ParamType.String,
        ),
        'tanggal_stuffing': serializeParam(
          _tanggalStuffing,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static OrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderStruct(
        no: deserializeParam(
          data['no'],
          ParamType.int,
          false,
        ),
        invoiceShipper: deserializeParam(
          data['invoice_shipper'],
          ParamType.String,
          false,
        ),
        noJob: deserializeParam(
          data['no_job'],
          ParamType.String,
          false,
        ),
        dataShipper: deserializeParam(
          data['data_shipper'],
          ParamType.String,
          false,
        ),
        tanggalStuffing: deserializeParam(
          data['tanggal_stuffing'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam<Status>(
          data['status'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'OrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderStruct &&
        no == other.no &&
        invoiceShipper == other.invoiceShipper &&
        noJob == other.noJob &&
        dataShipper == other.dataShipper &&
        tanggalStuffing == other.tanggalStuffing &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([no, invoiceShipper, noJob, dataShipper, tanggalStuffing, status]);
}

OrderStruct createOrderStruct({
  int? no,
  String? invoiceShipper,
  String? noJob,
  String? dataShipper,
  DateTime? tanggalStuffing,
  Status? status,
}) =>
    OrderStruct(
      no: no,
      invoiceShipper: invoiceShipper,
      noJob: noJob,
      dataShipper: dataShipper,
      tanggalStuffing: tanggalStuffing,
      status: status,
    );
