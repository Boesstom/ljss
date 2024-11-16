// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataOrderStruct extends BaseStruct {
  DataOrderStruct({
    String? shipper,
    String? shipperQq,
    String? noJob,
    String? noBooking,
    DateTime? tanggalStuffing,
    String? invoiceShipper,
    List<String>? tempatStuffing,
    String? vessel,
    String? destination,
    String? keterangan,
    String? dataBongkar,
    List<DetailDokumenStruct>? detailDokumen,
    List<DetailOrderStruct>? detailOrder,
    bool? ppn,
    bool? pph,
    List<DetailBiayaLangsungStruct>? detailBiayaLangsung,
  })  : _shipper = shipper,
        _shipperQq = shipperQq,
        _noJob = noJob,
        _noBooking = noBooking,
        _tanggalStuffing = tanggalStuffing,
        _invoiceShipper = invoiceShipper,
        _tempatStuffing = tempatStuffing,
        _vessel = vessel,
        _destination = destination,
        _keterangan = keterangan,
        _dataBongkar = dataBongkar,
        _detailDokumen = detailDokumen,
        _detailOrder = detailOrder,
        _ppn = ppn,
        _pph = pph,
        _detailBiayaLangsung = detailBiayaLangsung;

  // "shipper" field.
  String? _shipper;
  String get shipper => _shipper ?? '';
  set shipper(String? val) => _shipper = val;

  bool hasShipper() => _shipper != null;

  // "shipper_qq" field.
  String? _shipperQq;
  String get shipperQq => _shipperQq ?? '';
  set shipperQq(String? val) => _shipperQq = val;

  bool hasShipperQq() => _shipperQq != null;

  // "no_job" field.
  String? _noJob;
  String get noJob => _noJob ?? '';
  set noJob(String? val) => _noJob = val;

  bool hasNoJob() => _noJob != null;

  // "no_booking" field.
  String? _noBooking;
  String get noBooking => _noBooking ?? '';
  set noBooking(String? val) => _noBooking = val;

  bool hasNoBooking() => _noBooking != null;

  // "tanggal_stuffing" field.
  DateTime? _tanggalStuffing;
  DateTime? get tanggalStuffing => _tanggalStuffing;
  set tanggalStuffing(DateTime? val) => _tanggalStuffing = val;

  bool hasTanggalStuffing() => _tanggalStuffing != null;

  // "invoice_shipper" field.
  String? _invoiceShipper;
  String get invoiceShipper => _invoiceShipper ?? '';
  set invoiceShipper(String? val) => _invoiceShipper = val;

  bool hasInvoiceShipper() => _invoiceShipper != null;

  // "tempat_stuffing" field.
  List<String>? _tempatStuffing;
  List<String> get tempatStuffing => _tempatStuffing ?? const [];
  set tempatStuffing(List<String>? val) => _tempatStuffing = val;

  void updateTempatStuffing(Function(List<String>) updateFn) {
    updateFn(_tempatStuffing ??= []);
  }

  bool hasTempatStuffing() => _tempatStuffing != null;

  // "vessel" field.
  String? _vessel;
  String get vessel => _vessel ?? '';
  set vessel(String? val) => _vessel = val;

  bool hasVessel() => _vessel != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  set destination(String? val) => _destination = val;

  bool hasDestination() => _destination != null;

  // "keterangan" field.
  String? _keterangan;
  String get keterangan => _keterangan ?? '';
  set keterangan(String? val) => _keterangan = val;

  bool hasKeterangan() => _keterangan != null;

  // "data_bongkar" field.
  String? _dataBongkar;
  String get dataBongkar => _dataBongkar ?? '';
  set dataBongkar(String? val) => _dataBongkar = val;

  bool hasDataBongkar() => _dataBongkar != null;

  // "detail_dokumen" field.
  List<DetailDokumenStruct>? _detailDokumen;
  List<DetailDokumenStruct> get detailDokumen => _detailDokumen ?? const [];
  set detailDokumen(List<DetailDokumenStruct>? val) => _detailDokumen = val;

  void updateDetailDokumen(Function(List<DetailDokumenStruct>) updateFn) {
    updateFn(_detailDokumen ??= []);
  }

  bool hasDetailDokumen() => _detailDokumen != null;

  // "detail_order" field.
  List<DetailOrderStruct>? _detailOrder;
  List<DetailOrderStruct> get detailOrder => _detailOrder ?? const [];
  set detailOrder(List<DetailOrderStruct>? val) => _detailOrder = val;

  void updateDetailOrder(Function(List<DetailOrderStruct>) updateFn) {
    updateFn(_detailOrder ??= []);
  }

  bool hasDetailOrder() => _detailOrder != null;

  // "ppn" field.
  bool? _ppn;
  bool get ppn => _ppn ?? false;
  set ppn(bool? val) => _ppn = val;

  bool hasPpn() => _ppn != null;

  // "pph" field.
  bool? _pph;
  bool get pph => _pph ?? false;
  set pph(bool? val) => _pph = val;

  bool hasPph() => _pph != null;

  // "detail_biaya_langsung" field.
  List<DetailBiayaLangsungStruct>? _detailBiayaLangsung;
  List<DetailBiayaLangsungStruct> get detailBiayaLangsung =>
      _detailBiayaLangsung ?? const [];
  set detailBiayaLangsung(List<DetailBiayaLangsungStruct>? val) =>
      _detailBiayaLangsung = val;

  void updateDetailBiayaLangsung(
      Function(List<DetailBiayaLangsungStruct>) updateFn) {
    updateFn(_detailBiayaLangsung ??= []);
  }

  bool hasDetailBiayaLangsung() => _detailBiayaLangsung != null;

  static DataOrderStruct fromMap(Map<String, dynamic> data) => DataOrderStruct(
        shipper: data['shipper'] as String?,
        shipperQq: data['shipper_qq'] as String?,
        noJob: data['no_job'] as String?,
        noBooking: data['no_booking'] as String?,
        tanggalStuffing: data['tanggal_stuffing'] as DateTime?,
        invoiceShipper: data['invoice_shipper'] as String?,
        tempatStuffing: getDataList(data['tempat_stuffing']),
        vessel: data['vessel'] as String?,
        destination: data['destination'] as String?,
        keterangan: data['keterangan'] as String?,
        dataBongkar: data['data_bongkar'] as String?,
        detailDokumen: getStructList(
          data['detail_dokumen'],
          DetailDokumenStruct.fromMap,
        ),
        detailOrder: getStructList(
          data['detail_order'],
          DetailOrderStruct.fromMap,
        ),
        ppn: data['ppn'] as bool?,
        pph: data['pph'] as bool?,
        detailBiayaLangsung: getStructList(
          data['detail_biaya_langsung'],
          DetailBiayaLangsungStruct.fromMap,
        ),
      );

  static DataOrderStruct? maybeFromMap(dynamic data) => data is Map
      ? DataOrderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shipper': _shipper,
        'shipper_qq': _shipperQq,
        'no_job': _noJob,
        'no_booking': _noBooking,
        'tanggal_stuffing': _tanggalStuffing,
        'invoice_shipper': _invoiceShipper,
        'tempat_stuffing': _tempatStuffing,
        'vessel': _vessel,
        'destination': _destination,
        'keterangan': _keterangan,
        'data_bongkar': _dataBongkar,
        'detail_dokumen': _detailDokumen?.map((e) => e.toMap()).toList(),
        'detail_order': _detailOrder?.map((e) => e.toMap()).toList(),
        'ppn': _ppn,
        'pph': _pph,
        'detail_biaya_langsung':
            _detailBiayaLangsung?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shipper': serializeParam(
          _shipper,
          ParamType.String,
        ),
        'shipper_qq': serializeParam(
          _shipperQq,
          ParamType.String,
        ),
        'no_job': serializeParam(
          _noJob,
          ParamType.String,
        ),
        'no_booking': serializeParam(
          _noBooking,
          ParamType.String,
        ),
        'tanggal_stuffing': serializeParam(
          _tanggalStuffing,
          ParamType.DateTime,
        ),
        'invoice_shipper': serializeParam(
          _invoiceShipper,
          ParamType.String,
        ),
        'tempat_stuffing': serializeParam(
          _tempatStuffing,
          ParamType.String,
          isList: true,
        ),
        'vessel': serializeParam(
          _vessel,
          ParamType.String,
        ),
        'destination': serializeParam(
          _destination,
          ParamType.String,
        ),
        'keterangan': serializeParam(
          _keterangan,
          ParamType.String,
        ),
        'data_bongkar': serializeParam(
          _dataBongkar,
          ParamType.String,
        ),
        'detail_dokumen': serializeParam(
          _detailDokumen,
          ParamType.DataStruct,
          isList: true,
        ),
        'detail_order': serializeParam(
          _detailOrder,
          ParamType.DataStruct,
          isList: true,
        ),
        'ppn': serializeParam(
          _ppn,
          ParamType.bool,
        ),
        'pph': serializeParam(
          _pph,
          ParamType.bool,
        ),
        'detail_biaya_langsung': serializeParam(
          _detailBiayaLangsung,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DataOrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataOrderStruct(
        shipper: deserializeParam(
          data['shipper'],
          ParamType.String,
          false,
        ),
        shipperQq: deserializeParam(
          data['shipper_qq'],
          ParamType.String,
          false,
        ),
        noJob: deserializeParam(
          data['no_job'],
          ParamType.String,
          false,
        ),
        noBooking: deserializeParam(
          data['no_booking'],
          ParamType.String,
          false,
        ),
        tanggalStuffing: deserializeParam(
          data['tanggal_stuffing'],
          ParamType.DateTime,
          false,
        ),
        invoiceShipper: deserializeParam(
          data['invoice_shipper'],
          ParamType.String,
          false,
        ),
        tempatStuffing: deserializeParam<String>(
          data['tempat_stuffing'],
          ParamType.String,
          true,
        ),
        vessel: deserializeParam(
          data['vessel'],
          ParamType.String,
          false,
        ),
        destination: deserializeParam(
          data['destination'],
          ParamType.String,
          false,
        ),
        keterangan: deserializeParam(
          data['keterangan'],
          ParamType.String,
          false,
        ),
        dataBongkar: deserializeParam(
          data['data_bongkar'],
          ParamType.String,
          false,
        ),
        detailDokumen: deserializeStructParam<DetailDokumenStruct>(
          data['detail_dokumen'],
          ParamType.DataStruct,
          true,
          structBuilder: DetailDokumenStruct.fromSerializableMap,
        ),
        detailOrder: deserializeStructParam<DetailOrderStruct>(
          data['detail_order'],
          ParamType.DataStruct,
          true,
          structBuilder: DetailOrderStruct.fromSerializableMap,
        ),
        ppn: deserializeParam(
          data['ppn'],
          ParamType.bool,
          false,
        ),
        pph: deserializeParam(
          data['pph'],
          ParamType.bool,
          false,
        ),
        detailBiayaLangsung: deserializeStructParam<DetailBiayaLangsungStruct>(
          data['detail_biaya_langsung'],
          ParamType.DataStruct,
          true,
          structBuilder: DetailBiayaLangsungStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataOrderStruct &&
        shipper == other.shipper &&
        shipperQq == other.shipperQq &&
        noJob == other.noJob &&
        noBooking == other.noBooking &&
        tanggalStuffing == other.tanggalStuffing &&
        invoiceShipper == other.invoiceShipper &&
        listEquality.equals(tempatStuffing, other.tempatStuffing) &&
        vessel == other.vessel &&
        destination == other.destination &&
        keterangan == other.keterangan &&
        dataBongkar == other.dataBongkar &&
        listEquality.equals(detailDokumen, other.detailDokumen) &&
        listEquality.equals(detailOrder, other.detailOrder) &&
        ppn == other.ppn &&
        pph == other.pph &&
        listEquality.equals(detailBiayaLangsung, other.detailBiayaLangsung);
  }

  @override
  int get hashCode => const ListEquality().hash([
        shipper,
        shipperQq,
        noJob,
        noBooking,
        tanggalStuffing,
        invoiceShipper,
        tempatStuffing,
        vessel,
        destination,
        keterangan,
        dataBongkar,
        detailDokumen,
        detailOrder,
        ppn,
        pph,
        detailBiayaLangsung
      ]);
}

DataOrderStruct createDataOrderStruct({
  String? shipper,
  String? shipperQq,
  String? noJob,
  String? noBooking,
  DateTime? tanggalStuffing,
  String? invoiceShipper,
  String? vessel,
  String? destination,
  String? keterangan,
  String? dataBongkar,
  bool? ppn,
  bool? pph,
}) =>
    DataOrderStruct(
      shipper: shipper,
      shipperQq: shipperQq,
      noJob: noJob,
      noBooking: noBooking,
      tanggalStuffing: tanggalStuffing,
      invoiceShipper: invoiceShipper,
      vessel: vessel,
      destination: destination,
      keterangan: keterangan,
      dataBongkar: dataBongkar,
      ppn: ppn,
      pph: pph,
    );
