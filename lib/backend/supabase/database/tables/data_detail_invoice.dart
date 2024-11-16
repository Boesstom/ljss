import '../database.dart';

class DataDetailInvoiceTable extends SupabaseTable<DataDetailInvoiceRow> {
  @override
  String get tableName => 'data_detail_invoice';

  @override
  DataDetailInvoiceRow createRow(Map<String, dynamic> data) =>
      DataDetailInvoiceRow(data);
}

class DataDetailInvoiceRow extends SupabaseDataRow {
  DataDetailInvoiceRow(super.data);

  @override
  SupabaseTable get table => DataDetailInvoiceTable();

  int get idDataDetailInvoice => getField<int>('id_data_detail_invoice')!;
  set idDataDetailInvoice(int value) =>
      setField<int>('id_data_detail_invoice', value);
}
