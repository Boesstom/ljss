import '../database.dart';

class DataOrderTable extends SupabaseTable<DataOrderRow> {
  @override
  String get tableName => 'data_order';

  @override
  DataOrderRow createRow(Map<String, dynamic> data) => DataOrderRow(data);
}

class DataOrderRow extends SupabaseDataRow {
  DataOrderRow(super.data);

  @override
  SupabaseTable get table => DataOrderTable();

  int get idDataOrder => getField<int>('id_data_order')!;
  set idDataOrder(int value) => setField<int>('id_data_order', value);

  String? get shipper => getField<String>('shipper');
  set shipper(String? value) => setField<String>('shipper', value);

  String? get shipperQq => getField<String>('shipper_qq');
  set shipperQq(String? value) => setField<String>('shipper_qq', value);

  String? get noJob => getField<String>('no_job');
  set noJob(String? value) => setField<String>('no_job', value);

  String? get noBooking => getField<String>('no_booking');
  set noBooking(String? value) => setField<String>('no_booking', value);

  String? get invoiceShipper => getField<String>('invoice_shipper');
  set invoiceShipper(String? value) =>
      setField<String>('invoice_shipper', value);

  String? get vessel => getField<String>('vessel');
  set vessel(String? value) => setField<String>('vessel', value);

  String? get destination => getField<String>('destination');
  set destination(String? value) => setField<String>('destination', value);

  String? get dataBongkar => getField<String>('data_bongkar');
  set dataBongkar(String? value) => setField<String>('data_bongkar', value);

  String? get stuffingPlace => getField<String>('stuffing_place');
  set stuffingPlace(String? value) => setField<String>('stuffing_place', value);

  String? get catatan => getField<String>('catatan');
  set catatan(String? value) => setField<String>('catatan', value);

  double? get pph23 => getField<double>('pph23');
  set pph23(double? value) => setField<double>('pph23', value);

  double? get ppn => getField<double>('ppn');
  set ppn(double? value) => setField<double>('ppn', value);

  List<dynamic> get detailDokumen => getListField<dynamic>('detail_dokumen');
  set detailDokumen(List<dynamic>? value) =>
      setListField<dynamic>('detail_dokumen', value);

  List<dynamic> get dataOrder => getListField<dynamic>('data_order');
  set dataOrder(List<dynamic>? value) =>
      setListField<dynamic>('data_order', value);

  List<dynamic> get biayaLangsung => getListField<dynamic>('biaya_langsung');
  set biayaLangsung(List<dynamic>? value) =>
      setListField<dynamic>('biaya_langsung', value);

  String? get tanggal => getField<String>('tanggal');
  set tanggal(String? value) => setField<String>('tanggal', value);

  String? get bulan => getField<String>('bulan');
  set bulan(String? value) => setField<String>('bulan', value);

  String? get tahun => getField<String>('tahun');
  set tahun(String? value) => setField<String>('tahun', value);

  List<String> get keterangan => getListField<String>('keterangan');
  set keterangan(List<String>? value) =>
      setListField<String>('keterangan', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}
