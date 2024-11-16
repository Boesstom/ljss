import '../database.dart';

class DataHutangTable extends SupabaseTable<DataHutangRow> {
  @override
  String get tableName => 'data_hutang';

  @override
  DataHutangRow createRow(Map<String, dynamic> data) => DataHutangRow(data);
}

class DataHutangRow extends SupabaseDataRow {
  DataHutangRow(super.data);

  @override
  SupabaseTable get table => DataHutangTable();

  int get idDataHutang => getField<int>('id_data_hutang')!;
  set idDataHutang(int value) => setField<int>('id_data_hutang', value);

  String? get deskripsi => getField<String>('deskripsi');
  set deskripsi(String? value) => setField<String>('deskripsi', value);

  String? get vendor => getField<String>('vendor');
  set vendor(String? value) => setField<String>('vendor', value);

  double? get nominal => getField<double>('nominal');
  set nominal(double? value) => setField<double>('nominal', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  List<String> get noContainer => getListField<String>('no_container');
  set noContainer(List<String>? value) =>
      setListField<String>('no_container', value);

  String? get noJob => getField<String>('no_job');
  set noJob(String? value) => setField<String>('no_job', value);
}
