import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_data_hutang_widget.dart' show TambahDataHutangWidget;
import 'package:flutter/material.dart';

class TambahDataHutangModel extends FlutterFlowModel<TambahDataHutangWidget> {
  ///  Local state fields for this component.

  List<String> noContainer = [];
  void addToNoContainer(String item) => noContainer.add(item);
  void removeFromNoContainer(String item) => noContainer.remove(item);
  void removeAtIndexFromNoContainer(int index) => noContainer.removeAt(index);
  void insertAtIndexInNoContainer(int index, String item) =>
      noContainer.insert(index, item);
  void updateNoContainerAtIndex(int index, Function(String) updateFn) =>
      noContainer[index] = updateFn(noContainer[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Data Hutang Single)] action in TambahDataHutang widget.
  ApiCallResponse? apiHutang;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Keterangan widget.
  FocusNode? keteranganFocusNode;
  TextEditingController? keteranganTextController;
  String? Function(BuildContext, String?)? keteranganTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    keteranganFocusNode?.dispose();
    keteranganTextController?.dispose();
  }
}
