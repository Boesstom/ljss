import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_biaya_langsung_widget.dart' show DataBiayaLangsungWidget;
import 'package:flutter/material.dart';

class DataBiayaLangsungModel extends FlutterFlowModel<DataBiayaLangsungWidget> {
  ///  Local state fields for this component.

  List<dynamic> biayaLangsung = [];
  void addToBiayaLangsung(dynamic item) => biayaLangsung.add(item);
  void removeFromBiayaLangsung(dynamic item) => biayaLangsung.remove(item);
  void removeAtIndexFromBiayaLangsung(int index) =>
      biayaLangsung.removeAt(index);
  void insertAtIndexInBiayaLangsung(int index, dynamic item) =>
      biayaLangsung.insert(index, item);
  void updateBiayaLangsungAtIndex(int index, Function(dynamic) updateFn) =>
      biayaLangsung[index] = updateFn(biayaLangsung[index]);

  List<double> total = [];
  void addToTotal(double item) => total.add(item);
  void removeFromTotal(double item) => total.remove(item);
  void removeAtIndexFromTotal(int index) => total.removeAt(index);
  void insertAtIndexInTotal(int index, double item) =>
      total.insert(index, item);
  void updateTotalAtIndex(int index, Function(double) updateFn) =>
      total[index] = updateFn(total[index]);

  double totals = 0.0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Data Order Single)] action in DataBiayaLangsung widget.
  ApiCallResponse? apiOrder;
  // State field(s) for Keterangan widget.
  FocusNode? keteranganFocusNode1;
  TextEditingController? keteranganTextController1;
  String? Function(BuildContext, String?)? keteranganTextController1Validator;
  // State field(s) for Keterangan widget.
  FocusNode? keteranganFocusNode2;
  TextEditingController? keteranganTextController2;
  String? Function(BuildContext, String?)? keteranganTextController2Validator;
  // State field(s) for Keterangan widget.
  FocusNode? keteranganFocusNode3;
  TextEditingController? keteranganTextController3;
  String? Function(BuildContext, String?)? keteranganTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    keteranganFocusNode1?.dispose();
    keteranganTextController1?.dispose();

    keteranganFocusNode2?.dispose();
    keteranganTextController2?.dispose();

    keteranganFocusNode3?.dispose();
    keteranganTextController3?.dispose();
  }
}
