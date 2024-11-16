import '../database.dart';

class MdDataTruckTable extends SupabaseTable<MdDataTruckRow> {
  @override
  String get tableName => 'md_data_truck';

  @override
  MdDataTruckRow createRow(Map<String, dynamic> data) => MdDataTruckRow(data);
}

class MdDataTruckRow extends SupabaseDataRow {
  MdDataTruckRow(super.data);

  @override
  SupabaseTable get table => MdDataTruckTable();

  int get idMdDataTruck => getField<int>('id_md_data_truck')!;
  set idMdDataTruck(int value) => setField<int>('id_md_data_truck', value);

  String? get nopolDataTruck => getField<String>('nopol_data_truck');
  set nopolDataTruck(String? value) =>
      setField<String>('nopol_data_truck', value);

  String? get driverDataTruck => getField<String>('driver_data_truck');
  set driverDataTruck(String? value) =>
      setField<String>('driver_data_truck', value);

  String? get namaVendorDataTruck => getField<String>('nama_vendor_data_truck');
  set namaVendorDataTruck(String? value) =>
      setField<String>('nama_vendor_data_truck', value);

  String? get teleponDataTruck => getField<String>('telepon_data_truck');
  set teleponDataTruck(String? value) =>
      setField<String>('telepon_data_truck', value);

  String? get alamatDataTruck => getField<String>('alamat_data_truck');
  set alamatDataTruck(String? value) =>
      setField<String>('alamat_data_truck', value);
}
