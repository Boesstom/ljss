import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'buat_invoice_widget.dart' show BuatInvoiceWidget;
import 'package:flutter/material.dart';

class BuatInvoiceModel extends FlutterFlowModel<BuatInvoiceWidget> {
  ///  Local state fields for this page.

  List<DetailInvoiceStruct> detailInvoice = [];
  void addToDetailInvoice(DetailInvoiceStruct item) => detailInvoice.add(item);
  void removeFromDetailInvoice(DetailInvoiceStruct item) =>
      detailInvoice.remove(item);
  void removeAtIndexFromDetailInvoice(int index) =>
      detailInvoice.removeAt(index);
  void insertAtIndexInDetailInvoice(int index, DetailInvoiceStruct item) =>
      detailInvoice.insert(index, item);
  void updateDetailInvoiceAtIndex(
          int index, Function(DetailInvoiceStruct) updateFn) =>
      detailInvoice[index] = updateFn(detailInvoice[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for deskripsi widget.
  FocusNode? deskripsiFocusNode;
  TextEditingController? deskripsiTextController;
  String? Function(BuildContext, String?)? deskripsiTextControllerValidator;
  // State field(s) for harga widget.
  FocusNode? hargaFocusNode;
  TextEditingController? hargaTextController;
  String? Function(BuildContext, String?)? hargaTextControllerValidator;
  // State field(s) for kuantiti widget.
  FocusNode? kuantitiFocusNode;
  TextEditingController? kuantitiTextController;
  String? Function(BuildContext, String?)? kuantitiTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    deskripsiFocusNode?.dispose();
    deskripsiTextController?.dispose();

    hargaFocusNode?.dispose();
    hargaTextController?.dispose();

    kuantitiFocusNode?.dispose();
    kuantitiTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    textFieldFocusNode5?.dispose();
    textController8?.dispose();

    textFieldFocusNode6?.dispose();
    textController9?.dispose();

    textFieldFocusNode7?.dispose();
    textController10?.dispose();

    textFieldFocusNode8?.dispose();
    textController11?.dispose();

    textFieldFocusNode9?.dispose();
    textController12?.dispose();
  }
}
