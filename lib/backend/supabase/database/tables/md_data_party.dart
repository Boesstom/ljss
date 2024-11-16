import '../database.dart';

class MdDataPartyTable extends SupabaseTable<MdDataPartyRow> {
  @override
  String get tableName => 'md_data_party';

  @override
  MdDataPartyRow createRow(Map<String, dynamic> data) => MdDataPartyRow(data);
}

class MdDataPartyRow extends SupabaseDataRow {
  MdDataPartyRow(super.data);

  @override
  SupabaseTable get table => MdDataPartyTable();

  int get idMdDataParty => getField<int>('id_md_data_party')!;
  set idMdDataParty(int value) => setField<int>('id_md_data_party', value);

  String? get jumlahDataParty => getField<String>('jumlah_data_party');
  set jumlahDataParty(String? value) =>
      setField<String>('jumlah_data_party', value);

  String? get ukuranDataParty => getField<String>('ukuran_data_party');
  set ukuranDataParty(String? value) =>
      setField<String>('ukuran_data_party', value);
}
