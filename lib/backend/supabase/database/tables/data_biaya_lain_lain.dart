import '../database.dart';

class DataBiayaLainLainTable extends SupabaseTable<DataBiayaLainLainRow> {
  @override
  String get tableName => 'data_biaya_lain_lain';

  @override
  DataBiayaLainLainRow createRow(Map<String, dynamic> data) =>
      DataBiayaLainLainRow(data);
}

class DataBiayaLainLainRow extends SupabaseDataRow {
  DataBiayaLainLainRow(super.data);

  @override
  SupabaseTable get table => DataBiayaLainLainTable();

  int get idBiayaLainLain => getField<int>('id_biaya_lain_lain')!;
  set idBiayaLainLain(int value) => setField<int>('id_biaya_lain_lain', value);

  String get keterangan => getField<String>('keterangan')!;
  set keterangan(String value) => setField<String>('keterangan', value);

  String? get kategori => getField<String>('kategori');
  set kategori(String? value) => setField<String>('kategori', value);

  double? get nominal => getField<double>('nominal');
  set nominal(double? value) => setField<double>('nominal', value);

  String? get noNota => getField<String>('no_nota');
  set noNota(String? value) => setField<String>('no_nota', value);
}
