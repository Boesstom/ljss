import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_data_dokumen_widget.dart' show TambahDataDokumenWidget;
import 'package:flutter/material.dart';

class TambahDataDokumenModel extends FlutterFlowModel<TambahDataDokumenWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shipper widget.
  FocusNode? shipperFocusNode;
  TextEditingController? shipperTextController;
  String? Function(BuildContext, String?)? shipperTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shipperFocusNode?.dispose();
    shipperTextController?.dispose();
  }
}
