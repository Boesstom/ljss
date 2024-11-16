import '../database.dart';

class MdDataBongkarTable extends SupabaseTable<MdDataBongkarRow> {
  @override
  String get tableName => 'md_data_bongkar';

  @override
  MdDataBongkarRow createRow(Map<String, dynamic> data) =>
      MdDataBongkarRow(data);
}

class MdDataBongkarRow extends SupabaseDataRow {
  MdDataBongkarRow(super.data);

  @override
  SupabaseTable get table => MdDataBongkarTable();

  int get idDataBongkar => getField<int>('id_data_bongkar')!;
  set idDataBongkar(int value) => setField<int>('id_data_bongkar', value);

  String? get namaDataBongkar => getField<String>('nama_data_bongkar');
  set namaDataBongkar(String? value) =>
      setField<String>('nama_data_bongkar', value);

  String? get alamatDataBongkar => getField<String>('alamat_data_bongkar');
  set alamatDataBongkar(String? value) =>
      setField<String>('alamat_data_bongkar', value);
}
