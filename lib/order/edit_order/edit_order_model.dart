import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_order_widget.dart' show EditOrderWidget;
import 'package:flutter/material.dart';

class EditOrderModel extends FlutterFlowModel<EditOrderWidget> {
  ///  Local state fields for this page.

  List<dynamic> detailDokumen = [];
  void addToDetailDokumen(dynamic item) => detailDokumen.add(item);
  void removeFromDetailDokumen(dynamic item) => detailDokumen.remove(item);
  void removeAtIndexFromDetailDokumen(int index) =>
      detailDokumen.removeAt(index);
  void insertAtIndexInDetailDokumen(int index, dynamic item) =>
      detailDokumen.insert(index, item);
  void updateDetailDokumenAtIndex(int index, Function(dynamic) updateFn) =>
      detailDokumen[index] = updateFn(detailDokumen[index]);

  List<dynamic> biayaLangsung = [];
  void addToBiayaLangsung(dynamic item) => biayaLangsung.add(item);
  void removeFromBiayaLangsung(dynamic item) => biayaLangsung.remove(item);
  void removeAtIndexFromBiayaLangsung(int index) =>
      biayaLangsung.removeAt(index);
  void insertAtIndexInBiayaLangsung(int index, dynamic item) =>
      biayaLangsung.insert(index, item);
  void updateBiayaLangsungAtIndex(int index, Function(dynamic) updateFn) =>
      biayaLangsung[index] = updateFn(biayaLangsung[index]);

  List<dynamic> dataOrder = [];
  void addToDataOrder(dynamic item) => dataOrder.add(item);
  void removeFromDataOrder(dynamic item) => dataOrder.remove(item);
  void removeAtIndexFromDataOrder(int index) => dataOrder.removeAt(index);
  void insertAtIndexInDataOrder(int index, dynamic item) =>
      dataOrder.insert(index, item);
  void updateDataOrderAtIndex(int index, Function(dynamic) updateFn) =>
      dataOrder[index] = updateFn(dataOrder[index]);

  List<String> noContainer = [];
  void addToNoContainer(String item) => noContainer.add(item);
  void removeFromNoContainer(String item) => noContainer.remove(item);
  void removeAtIndexFromNoContainer(int index) => noContainer.removeAt(index);
  void insertAtIndexInNoContainer(int index, String item) =>
      noContainer.insert(index, item);
  void updateNoContainerAtIndex(int index, Function(String) updateFn) =>
      noContainer[index] = updateFn(noContainer[index]);

  List<String> keterangan = [];
  void addToKeterangan(String item) => keterangan.add(item);
  void removeFromKeterangan(String item) => keterangan.remove(item);
  void removeAtIndexFromKeterangan(int index) => keterangan.removeAt(index);
  void insertAtIndexInKeterangan(int index, String item) =>
      keterangan.insert(index, item);
  void updateKeteranganAtIndex(int index, Function(String) updateFn) =>
      keterangan[index] = updateFn(keterangan[index]);

  ///  State fields for stateful widgets in this page.

  Stream<List<DataOrderRow>>? editOrderSupabaseStream;
  // Stores action output result for [Backend Call - API (Data Order Single)] action in EditOrder widget.
  ApiCallResponse? apiSupabase;
  // State field(s) for shipperQQ widget.
  String? shipperQQValue;
  FormFieldController<String>? shipperQQValueController;
  // State field(s) for shipperDropdown widget.
  String? shipperDropdownValue;
  FormFieldController<String>? shipperDropdownValueController;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode1;
  TextEditingController? shipperTextController1;
  String? Function(BuildContext, String?)? shipperTextController1Validator;
  DateTime? datePicked;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode2;
  TextEditingController? shipperTextController2;
  String? Function(BuildContext, String?)? shipperTextController2Validator;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode3;
  TextEditingController? shipperTextController3;
  String? Function(BuildContext, String?)? shipperTextController3Validator;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode4;
  TextEditingController? shipperTextController4;
  String? Function(BuildContext, String?)? shipperTextController4Validator;
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode5;
  TextEditingController? shipperTextController5;
  String? Function(BuildContext, String?)? shipperTextController5Validator;
  // State field(s) for DataBongkar widget.
  String? dataBongkarValue;
  FormFieldController<String>? dataBongkarValueController;
  // State field(s) for DropDownTempatStuffing widget.
  String? dropDownTempatStuffingValue;
  FormFieldController<String>? dropDownTempatStuffingValueController;
  // State field(s) for Keterangan widget.
  FocusNode? keteranganFocusNode;
  TextEditingController? keteranganTextController;
  String? Function(BuildContext, String?)? keteranganTextControllerValidator;
  // State field(s) for pph23 widget.
  double? pph23Value;
  FormFieldController<double>? pph23ValueController;
  // State field(s) for ppn widget.
  double? ppnValue;
  FormFieldController<double>? ppnValueController;
  // State field(s) for DropDownDokumen widget.
  String? dropDownDokumenValue;
  FormFieldController<String>? dropDownDokumenValueController;
  // State field(s) for DropDownVendor widget.
  String? dropDownVendorValue;
  FormFieldController<String>? dropDownVendorValueController;
  // State field(s) for drodpdownDataPart widget.
  String? drodpdownDataPartValue;
  FormFieldController<String>? drodpdownDataPartValueController;
  // State field(s) for dropdownDataTruck widget.
  String? dropdownDataTruckValue;
  FormFieldController<String>? dropdownDataTruckValueController;
  // State field(s) for noContainer widget.
  FocusNode? noContainerFocusNode;
  TextEditingController? noContainerTextController;
  String? Function(BuildContext, String?)? noContainerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shipperFocusNode1?.dispose();
    shipperTextController1?.dispose();

    shipperFocusNode2?.dispose();
    shipperTextController2?.dispose();

    shipperFocusNode3?.dispose();
    shipperTextController3?.dispose();

    shipperFocusNode4?.dispose();
    shipperTextController4?.dispose();

    shipperFocusNode5?.dispose();
    shipperTextController5?.dispose();

    keteranganFocusNode?.dispose();
    keteranganTextController?.dispose();

    noContainerFocusNode?.dispose();
    noContainerTextController?.dispose();
  }
}
