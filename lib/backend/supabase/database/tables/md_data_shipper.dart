import '../database.dart';

class MdDataShipperTable extends SupabaseTable<MdDataShipperRow> {
  @override
  String get tableName => 'md_data_shipper';

  @override
  MdDataShipperRow createRow(Map<String, dynamic> data) =>
      MdDataShipperRow(data);
}

class MdDataShipperRow extends SupabaseDataRow {
  MdDataShipperRow(super.data);

  @override
  SupabaseTable get table => MdDataShipperTable();

  int get idMdDataShipper => getField<int>('id_md_data_shipper')!;
  set idMdDataShipper(int value) => setField<int>('id_md_data_shipper', value);

  String? get namaDataShipper => getField<String>('nama_data_shipper');
  set namaDataShipper(String? value) =>
      setField<String>('nama_data_shipper', value);

  String? get alamatDataShipper => getField<String>('alamat_data_shipper');
  set alamatDataShipper(String? value) =>
      setField<String>('alamat_data_shipper', value);

  List<String> get stuffingPlaceDataShipper =>
      getListField<String>('stuffing_place_data_shipper');
  set stuffingPlaceDataShipper(List<String>? value) =>
      setListField<String>('stuffing_place_data_shipper', value);
}
