import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _Order = (await secureStorage.getStringList('ff_Order'))
              ?.map((x) {
                try {
                  return OrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Order;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_Role') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_Role') ?? '{}';
          _Role = RoleStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_MasterData') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_MasterData') ?? '{}';
          _MasterData =
              MasterDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _DataBongkar = (await secureStorage.getStringList('ff_DataBongkar'))
              ?.map((x) {
                try {
                  return DataBongkarStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataBongkar;
    });
    await _safeInitAsync(() async {
      _DataParty = (await secureStorage.getStringList('ff_DataParty'))
              ?.map((x) {
                try {
                  return DataPartyStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataParty;
    });
    await _safeInitAsync(() async {
      _DataShipper = (await secureStorage.getStringList('ff_DataShipper'))
              ?.map((x) {
                try {
                  return DataShipperStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataShipper;
    });
    await _safeInitAsync(() async {
      _DataTruck = (await secureStorage.getStringList('ff_DataTruck'))
              ?.map((x) {
                try {
                  return DataTruckStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataTruck;
    });
    await _safeInitAsync(() async {
      _DataDokumen = (await secureStorage.getStringList('ff_DataDokumen'))
              ?.map((x) {
                try {
                  return DataDokumenStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataDokumen;
    });
    await _safeInitAsync(() async {
      _DataVendor = (await secureStorage.getStringList('ff_DataVendor'))
              ?.map((x) {
                try {
                  return DataVendorStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataVendor;
    });
    await _safeInitAsync(() async {
      _DataOrder = (await secureStorage.getStringList('ff_DataOrder'))
              ?.map((x) {
                try {
                  return DataOrderStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DataOrder;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_Laporan') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_Laporan') ?? '{}';
          _Laporan =
              LaporanStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_Finance') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_Finance') ?? '{}';
          _Finance =
              FinanceStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<OrderStruct> _Order = [
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"1\",\"invoice_shipper\":\"Invoice 1\",\"no_job\":\"123456\",\"data_shipper\":\"Data Shipper 1\",\"tanggal_stuffing\":\"1710484794037\",\"status\":\"Pending\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"2\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484825603\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"3\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484833186\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"4\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484836888\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"5\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484840203\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"6\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484843318\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"7\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484846626\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"8\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484851652\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"9\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484855090\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"10\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484859198\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"11\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484865594\",\"status\":\"Complete\"}')),
    OrderStruct.fromSerializableMap(jsonDecode(
        '{\"no\":\"12\",\"invoice_shipper\":\"Hello World\",\"no_job\":\"Hello World\",\"data_shipper\":\"Hello World\",\"tanggal_stuffing\":\"1710484922988\",\"status\":\"Complete\"}'))
  ];
  List<OrderStruct> get Order => _Order;
  set Order(List<OrderStruct> value) {
    _Order = value;
    secureStorage.setStringList(
        'ff_Order', value.map((x) => x.serialize()).toList());
  }

  void deleteOrder() {
    secureStorage.delete(key: 'ff_Order');
  }

  void addToOrder(OrderStruct value) {
    Order.add(value);
    secureStorage.setStringList(
        'ff_Order', _Order.map((x) => x.serialize()).toList());
  }

  void removeFromOrder(OrderStruct value) {
    Order.remove(value);
    secureStorage.setStringList(
        'ff_Order', _Order.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOrder(int index) {
    Order.removeAt(index);
    secureStorage.setStringList(
        'ff_Order', _Order.map((x) => x.serialize()).toList());
  }

  void updateOrderAtIndex(
    int index,
    OrderStruct Function(OrderStruct) updateFn,
  ) {
    Order[index] = updateFn(_Order[index]);
    secureStorage.setStringList(
        'ff_Order', _Order.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOrder(int index, OrderStruct value) {
    Order.insert(index, value);
    secureStorage.setStringList(
        'ff_Order', _Order.map((x) => x.serialize()).toList());
  }

  RoleStruct _Role =
      RoleStruct.fromSerializableMap(jsonDecode('{\"Role\":\"Admin\"}'));
  RoleStruct get Role => _Role;
  set Role(RoleStruct value) {
    _Role = value;
    secureStorage.setString('ff_Role', value.serialize());
  }

  void deleteRole() {
    secureStorage.delete(key: 'ff_Role');
  }

  void updateRoleStruct(Function(RoleStruct) updateFn) {
    updateFn(_Role);
    secureStorage.setString('ff_Role', _Role.serialize());
  }

  MasterDataStruct _MasterData = MasterDataStruct();
  MasterDataStruct get MasterData => _MasterData;
  set MasterData(MasterDataStruct value) {
    _MasterData = value;
    secureStorage.setString('ff_MasterData', value.serialize());
  }

  void deleteMasterData() {
    secureStorage.delete(key: 'ff_MasterData');
  }

  void updateMasterDataStruct(Function(MasterDataStruct) updateFn) {
    updateFn(_MasterData);
    secureStorage.setString('ff_MasterData', _MasterData.serialize());
  }

  bool _sideNav = true;
  bool get sideNav => _sideNav;
  set sideNav(bool value) {
    _sideNav = value;
  }

  List<DataBongkarStruct> _DataBongkar = [];
  List<DataBongkarStruct> get DataBongkar => _DataBongkar;
  set DataBongkar(List<DataBongkarStruct> value) {
    _DataBongkar = value;
    secureStorage.setStringList(
        'ff_DataBongkar', value.map((x) => x.serialize()).toList());
  }

  void deleteDataBongkar() {
    secureStorage.delete(key: 'ff_DataBongkar');
  }

  void addToDataBongkar(DataBongkarStruct value) {
    DataBongkar.add(value);
    secureStorage.setStringList(
        'ff_DataBongkar', _DataBongkar.map((x) => x.serialize()).toList());
  }

  void removeFromDataBongkar(DataBongkarStruct value) {
    DataBongkar.remove(value);
    secureStorage.setStringList(
        'ff_DataBongkar', _DataBongkar.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataBongkar(int index) {
    DataBongkar.removeAt(index);
    secureStorage.setStringList(
        'ff_DataBongkar', _DataBongkar.map((x) => x.serialize()).toList());
  }

  void updateDataBongkarAtIndex(
    int index,
    DataBongkarStruct Function(DataBongkarStruct) updateFn,
  ) {
    DataBongkar[index] = updateFn(_DataBongkar[index]);
    secureStorage.setStringList(
        'ff_DataBongkar', _DataBongkar.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataBongkar(int index, DataBongkarStruct value) {
    DataBongkar.insert(index, value);
    secureStorage.setStringList(
        'ff_DataBongkar', _DataBongkar.map((x) => x.serialize()).toList());
  }

  List<DataPartyStruct> _DataParty = [];
  List<DataPartyStruct> get DataParty => _DataParty;
  set DataParty(List<DataPartyStruct> value) {
    _DataParty = value;
    secureStorage.setStringList(
        'ff_DataParty', value.map((x) => x.serialize()).toList());
  }

  void deleteDataParty() {
    secureStorage.delete(key: 'ff_DataParty');
  }

  void addToDataParty(DataPartyStruct value) {
    DataParty.add(value);
    secureStorage.setStringList(
        'ff_DataParty', _DataParty.map((x) => x.serialize()).toList());
  }

  void removeFromDataParty(DataPartyStruct value) {
    DataParty.remove(value);
    secureStorage.setStringList(
        'ff_DataParty', _DataParty.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataParty(int index) {
    DataParty.removeAt(index);
    secureStorage.setStringList(
        'ff_DataParty', _DataParty.map((x) => x.serialize()).toList());
  }

  void updateDataPartyAtIndex(
    int index,
    DataPartyStruct Function(DataPartyStruct) updateFn,
  ) {
    DataParty[index] = updateFn(_DataParty[index]);
    secureStorage.setStringList(
        'ff_DataParty', _DataParty.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataParty(int index, DataPartyStruct value) {
    DataParty.insert(index, value);
    secureStorage.setStringList(
        'ff_DataParty', _DataParty.map((x) => x.serialize()).toList());
  }

  List<DataShipperStruct> _DataShipper = [];
  List<DataShipperStruct> get DataShipper => _DataShipper;
  set DataShipper(List<DataShipperStruct> value) {
    _DataShipper = value;
    secureStorage.setStringList(
        'ff_DataShipper', value.map((x) => x.serialize()).toList());
  }

  void deleteDataShipper() {
    secureStorage.delete(key: 'ff_DataShipper');
  }

  void addToDataShipper(DataShipperStruct value) {
    DataShipper.add(value);
    secureStorage.setStringList(
        'ff_DataShipper', _DataShipper.map((x) => x.serialize()).toList());
  }

  void removeFromDataShipper(DataShipperStruct value) {
    DataShipper.remove(value);
    secureStorage.setStringList(
        'ff_DataShipper', _DataShipper.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataShipper(int index) {
    DataShipper.removeAt(index);
    secureStorage.setStringList(
        'ff_DataShipper', _DataShipper.map((x) => x.serialize()).toList());
  }

  void updateDataShipperAtIndex(
    int index,
    DataShipperStruct Function(DataShipperStruct) updateFn,
  ) {
    DataShipper[index] = updateFn(_DataShipper[index]);
    secureStorage.setStringList(
        'ff_DataShipper', _DataShipper.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataShipper(int index, DataShipperStruct value) {
    DataShipper.insert(index, value);
    secureStorage.setStringList(
        'ff_DataShipper', _DataShipper.map((x) => x.serialize()).toList());
  }

  List<DataTruckStruct> _DataTruck = [];
  List<DataTruckStruct> get DataTruck => _DataTruck;
  set DataTruck(List<DataTruckStruct> value) {
    _DataTruck = value;
    secureStorage.setStringList(
        'ff_DataTruck', value.map((x) => x.serialize()).toList());
  }

  void deleteDataTruck() {
    secureStorage.delete(key: 'ff_DataTruck');
  }

  void addToDataTruck(DataTruckStruct value) {
    DataTruck.add(value);
    secureStorage.setStringList(
        'ff_DataTruck', _DataTruck.map((x) => x.serialize()).toList());
  }

  void removeFromDataTruck(DataTruckStruct value) {
    DataTruck.remove(value);
    secureStorage.setStringList(
        'ff_DataTruck', _DataTruck.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataTruck(int index) {
    DataTruck.removeAt(index);
    secureStorage.setStringList(
        'ff_DataTruck', _DataTruck.map((x) => x.serialize()).toList());
  }

  void updateDataTruckAtIndex(
    int index,
    DataTruckStruct Function(DataTruckStruct) updateFn,
  ) {
    DataTruck[index] = updateFn(_DataTruck[index]);
    secureStorage.setStringList(
        'ff_DataTruck', _DataTruck.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataTruck(int index, DataTruckStruct value) {
    DataTruck.insert(index, value);
    secureStorage.setStringList(
        'ff_DataTruck', _DataTruck.map((x) => x.serialize()).toList());
  }

  List<DataDokumenStruct> _DataDokumen = [];
  List<DataDokumenStruct> get DataDokumen => _DataDokumen;
  set DataDokumen(List<DataDokumenStruct> value) {
    _DataDokumen = value;
    secureStorage.setStringList(
        'ff_DataDokumen', value.map((x) => x.serialize()).toList());
  }

  void deleteDataDokumen() {
    secureStorage.delete(key: 'ff_DataDokumen');
  }

  void addToDataDokumen(DataDokumenStruct value) {
    DataDokumen.add(value);
    secureStorage.setStringList(
        'ff_DataDokumen', _DataDokumen.map((x) => x.serialize()).toList());
  }

  void removeFromDataDokumen(DataDokumenStruct value) {
    DataDokumen.remove(value);
    secureStorage.setStringList(
        'ff_DataDokumen', _DataDokumen.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataDokumen(int index) {
    DataDokumen.removeAt(index);
    secureStorage.setStringList(
        'ff_DataDokumen', _DataDokumen.map((x) => x.serialize()).toList());
  }

  void updateDataDokumenAtIndex(
    int index,
    DataDokumenStruct Function(DataDokumenStruct) updateFn,
  ) {
    DataDokumen[index] = updateFn(_DataDokumen[index]);
    secureStorage.setStringList(
        'ff_DataDokumen', _DataDokumen.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataDokumen(int index, DataDokumenStruct value) {
    DataDokumen.insert(index, value);
    secureStorage.setStringList(
        'ff_DataDokumen', _DataDokumen.map((x) => x.serialize()).toList());
  }

  List<DataVendorStruct> _DataVendor = [];
  List<DataVendorStruct> get DataVendor => _DataVendor;
  set DataVendor(List<DataVendorStruct> value) {
    _DataVendor = value;
    secureStorage.setStringList(
        'ff_DataVendor', value.map((x) => x.serialize()).toList());
  }

  void deleteDataVendor() {
    secureStorage.delete(key: 'ff_DataVendor');
  }

  void addToDataVendor(DataVendorStruct value) {
    DataVendor.add(value);
    secureStorage.setStringList(
        'ff_DataVendor', _DataVendor.map((x) => x.serialize()).toList());
  }

  void removeFromDataVendor(DataVendorStruct value) {
    DataVendor.remove(value);
    secureStorage.setStringList(
        'ff_DataVendor', _DataVendor.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataVendor(int index) {
    DataVendor.removeAt(index);
    secureStorage.setStringList(
        'ff_DataVendor', _DataVendor.map((x) => x.serialize()).toList());
  }

  void updateDataVendorAtIndex(
    int index,
    DataVendorStruct Function(DataVendorStruct) updateFn,
  ) {
    DataVendor[index] = updateFn(_DataVendor[index]);
    secureStorage.setStringList(
        'ff_DataVendor', _DataVendor.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataVendor(int index, DataVendorStruct value) {
    DataVendor.insert(index, value);
    secureStorage.setStringList(
        'ff_DataVendor', _DataVendor.map((x) => x.serialize()).toList());
  }

  List<DataOrderStruct> _DataOrder = [];
  List<DataOrderStruct> get DataOrder => _DataOrder;
  set DataOrder(List<DataOrderStruct> value) {
    _DataOrder = value;
    secureStorage.setStringList(
        'ff_DataOrder', value.map((x) => x.serialize()).toList());
  }

  void deleteDataOrder() {
    secureStorage.delete(key: 'ff_DataOrder');
  }

  void addToDataOrder(DataOrderStruct value) {
    DataOrder.add(value);
    secureStorage.setStringList(
        'ff_DataOrder', _DataOrder.map((x) => x.serialize()).toList());
  }

  void removeFromDataOrder(DataOrderStruct value) {
    DataOrder.remove(value);
    secureStorage.setStringList(
        'ff_DataOrder', _DataOrder.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataOrder(int index) {
    DataOrder.removeAt(index);
    secureStorage.setStringList(
        'ff_DataOrder', _DataOrder.map((x) => x.serialize()).toList());
  }

  void updateDataOrderAtIndex(
    int index,
    DataOrderStruct Function(DataOrderStruct) updateFn,
  ) {
    DataOrder[index] = updateFn(_DataOrder[index]);
    secureStorage.setStringList(
        'ff_DataOrder', _DataOrder.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataOrder(int index, DataOrderStruct value) {
    DataOrder.insert(index, value);
    secureStorage.setStringList(
        'ff_DataOrder', _DataOrder.map((x) => x.serialize()).toList());
  }

  LaporanStruct _Laporan = LaporanStruct();
  LaporanStruct get Laporan => _Laporan;
  set Laporan(LaporanStruct value) {
    _Laporan = value;
    secureStorage.setString('ff_Laporan', value.serialize());
  }

  void deleteLaporan() {
    secureStorage.delete(key: 'ff_Laporan');
  }

  void updateLaporanStruct(Function(LaporanStruct) updateFn) {
    updateFn(_Laporan);
    secureStorage.setString('ff_Laporan', _Laporan.serialize());
  }

  FinanceStruct _Finance = FinanceStruct();
  FinanceStruct get Finance => _Finance;
  set Finance(FinanceStruct value) {
    _Finance = value;
    secureStorage.setString('ff_Finance', value.serialize());
  }

  void deleteFinance() {
    secureStorage.delete(key: 'ff_Finance');
  }

  void updateFinanceStruct(Function(FinanceStruct) updateFn) {
    updateFn(_Finance);
    secureStorage.setString('ff_Finance', _Finance.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
