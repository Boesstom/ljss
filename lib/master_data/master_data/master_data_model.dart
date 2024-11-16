import '/backend/supabase/supabase.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'master_data_widget.dart' show MasterDataWidget;
import 'package:flutter/material.dart';

class MasterDataModel extends FlutterFlowModel<MasterDataWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for pencarianDataShipper widget.
  FocusNode? pencarianDataShipperFocusNode;
  TextEditingController? pencarianDataShipperTextController;
  String? Function(BuildContext, String?)?
      pencarianDataShipperTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for pencarianDataParty widget.
  FocusNode? pencarianDataPartyFocusNode;
  TextEditingController? pencarianDataPartyTextController;
  String? Function(BuildContext, String?)?
      pencarianDataPartyTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for pencarianDataDokumen widget.
  FocusNode? pencarianDataDokumenFocusNode;
  TextEditingController? pencarianDataDokumenTextController;
  String? Function(BuildContext, String?)?
      pencarianDataDokumenTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for pencarianDataTrucks widget.
  FocusNode? pencarianDataTrucksFocusNode;
  TextEditingController? pencarianDataTrucksTextController;
  String? Function(BuildContext, String?)?
      pencarianDataTrucksTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<MdDataTruckRow>();
  // State field(s) for pencarianDataVendor widget.
  FocusNode? pencarianDataVendorFocusNode;
  TextEditingController? pencarianDataVendorTextController;
  String? Function(BuildContext, String?)?
      pencarianDataVendorTextControllerValidator;
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
    pencarianDataShipperFocusNode?.dispose();
    pencarianDataShipperTextController?.dispose();

    paginatedDataTableController1.dispose();
    pencarianDataPartyFocusNode?.dispose();
    pencarianDataPartyTextController?.dispose();

    paginatedDataTableController2.dispose();
    textFieldFocusNode?.dispose();
    textController3?.dispose();

    paginatedDataTableController3.dispose();
    pencarianDataDokumenFocusNode?.dispose();
    pencarianDataDokumenTextController?.dispose();

    paginatedDataTableController4.dispose();
    pencarianDataTrucksFocusNode?.dispose();
    pencarianDataTrucksTextController?.dispose();

    paginatedDataTableController5.dispose();
    pencarianDataVendorFocusNode?.dispose();
    pencarianDataVendorTextController?.dispose();

    paginatedDataTableController6.dispose();
  }
}
