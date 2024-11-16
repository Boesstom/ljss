import '../database.dart';

class MdDataVendorTable extends SupabaseTable<MdDataVendorRow> {
  @override
  String get tableName => 'md_data_vendor';

  @override
  MdDataVendorRow createRow(Map<String, dynamic> data) => MdDataVendorRow(data);
}

class MdDataVendorRow extends SupabaseDataRow {
  MdDataVendorRow(super.data);

  @override
  SupabaseTable get table => MdDataVendorTable();

  int get idDataVendor => getField<int>('id_data_vendor')!;
  set idDataVendor(int value) => setField<int>('id_data_vendor', value);

  String? get namaDataVendor => getField<String>('nama_data_vendor');
  set namaDataVendor(String? value) =>
      setField<String>('nama_data_vendor', value);

  String? get alamatDataVendor => getField<String>('alamat_data_vendor');
  set alamatDataVendor(String? value) =>
      setField<String>('alamat_data_vendor', value);

  String? get teleponDataVendor => getField<String>('telepon_data_vendor');
  set teleponDataVendor(String? value) =>
      setField<String>('telepon_data_vendor', value);

  String? get jenisDokumenDataVendor =>
      getField<String>('jenis_dokumen_data_vendor');
  set jenisDokumenDataVendor(String? value) =>
      setField<String>('jenis_dokumen_data_vendor', value);
}
