import '../database.dart';

class MdDataDokumenTable extends SupabaseTable<MdDataDokumenRow> {
  @override
  String get tableName => 'md_data_dokumen';

  @override
  MdDataDokumenRow createRow(Map<String, dynamic> data) =>
      MdDataDokumenRow(data);
}

class MdDataDokumenRow extends SupabaseDataRow {
  MdDataDokumenRow(super.data);

  @override
  SupabaseTable get table => MdDataDokumenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get namaDataDokumen => getField<String>('nama_data_dokumen');
  set namaDataDokumen(String? value) =>
      setField<String>('nama_data_dokumen', value);
}
