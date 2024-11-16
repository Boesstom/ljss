import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'finance_widget.dart' show FinanceWidget;
import 'package:flutter/material.dart';

class FinanceModel extends FlutterFlowModel<FinanceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for pencarianDataHutang widget.
  FocusNode? pencarianDataHutangFocusNode;
  TextEditingController? pencarianDataHutangTextController;
  String? Function(BuildContext, String?)?
      pencarianDataHutangTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    paginatedDataTableController1.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    paginatedDataTableController2.dispose();
    pencarianDataHutangFocusNode?.dispose();
    pencarianDataHutangTextController?.dispose();

    paginatedDataTableController3.dispose();
    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    paginatedDataTableController4.dispose();
    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    paginatedDataTableController5.dispose();
    textFieldFocusNode5?.dispose();
    textController6?.dispose();

    paginatedDataTableController6.dispose();
  }
}
