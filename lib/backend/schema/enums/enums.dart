import 'package:collection/collection.dart';

enum Status {
  Complete,
  Pending,
  Proses,
}

enum Role {
  Customer,
  Admin,
  Manager,
}

enum MasterData {
  Data_Shipper,
  Data_Party,
  Data_Truck,
  Data_Tambahan,
  Data_Bongkar,
  Data_Dokumen,
  Data_Vendor,
}

enum Laporan {
  Hutang,
  Trucking,
  Piutang,
  Invoice,
}

enum Finance {
  Order_Calculation,
  Biaya_Langsung,
  Biaya_Lain,
  Hutang,
  Piutang,
  Inventaris,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (MasterData):
      return MasterData.values.deserialize(value) as T?;
    case (Laporan):
      return Laporan.values.deserialize(value) as T?;
    case (Finance):
      return Finance.values.deserialize(value) as T?;
    default:
      return null;
  }
}
