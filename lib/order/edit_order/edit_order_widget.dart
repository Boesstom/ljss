import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/order/data_order_list/data_order_list_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'edit_order_model.dart';
export 'edit_order_model.dart';

class EditOrderWidget extends StatefulWidget {
  const EditOrderWidget({
    super.key,
    this.supabaseRef,
    required this.editTambah,
  });

  final int? supabaseRef;
  final String? editTambah;

  @override
  State<EditOrderWidget> createState() => _EditOrderWidgetState();
}

class _EditOrderWidgetState extends State<EditOrderWidget> {
  late EditOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditOrderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiSupabase = await MasterDataGroup.dataOrderSingleCall.call(
        id: widget.supabaseRef,
      );

      _model.detailDokumen = getJsonField(
        (_model.apiSupabase?.jsonBody ?? ''),
        r'''$[:].detail_dokumen''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      safeSetState(() {});
      _model.dataOrder = getJsonField(
        (_model.apiSupabase?.jsonBody ?? ''),
        r'''$[:].data_order''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      safeSetState(() {});
      _model.biayaLangsung = getJsonField(
        (_model.apiSupabase?.jsonBody ?? ''),
        r'''$[:].biaya_langsung''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      safeSetState(() {});
      _model.keterangan = (getJsonField(
        (_model.apiSupabase?.jsonBody ?? ''),
        r'''$[:].keterangan''',
        true,
      ) as List)
          .map<String>((s) => s.toString())
          .toList()
          .toList()
          .cast<String>();
      safeSetState(() {});
    });

    _model.shipperFocusNode1 ??= FocusNode();

    _model.shipperFocusNode2 ??= FocusNode();

    _model.shipperFocusNode3 ??= FocusNode();

    _model.shipperFocusNode4 ??= FocusNode();

    _model.shipperFocusNode5 ??= FocusNode();

    _model.keteranganTextController ??= TextEditingController();
    _model.keteranganFocusNode ??= FocusNode();

    _model.noContainerTextController ??= TextEditingController();
    _model.noContainerFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<DataOrderRow>>(
      stream: _model.editOrderSupabaseStream ??= SupaFlow.client
          .from("data_order")
          .stream(primaryKey: ['id_data_order'])
          .eq(
            'id_data_order',
            widget.supabaseRef!,
          )
          .map((list) => list.map((item) => DataOrderRow(item)).toList()),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<DataOrderRow> editOrderDataOrderRowList = snapshot.data!;

        final editOrderDataOrderRow = editOrderDataOrderRowList.isNotEmpty
            ? editOrderDataOrderRowList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Container(
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.editTambah,
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await DataHutangTable().delete(
                                  matchingRows: (rows) => rows.inFilter(
                                    'id_data_hutang',
                                    _model.detailDokumen
                                        .map((e) =>
                                            DetailDokumenStruct.maybeFromMap(e)
                                                ?.id)
                                        .withoutNulls
                                        .toList(),
                                  ),
                                );
                                await DataHutangTable().delete(
                                  matchingRows: (rows) => rows.inFilter(
                                    'id_data_hutang',
                                    _model.dataOrder
                                        .map((e) =>
                                            DetailOrderStruct.maybeFromMap(e)
                                                ?.id)
                                        .withoutNulls
                                        .toList(),
                                  ),
                                );
                                context.safePop();
                              },
                              child: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 40.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if ((FFAppState().Role.role == Role.Admin) ||
                        (FFAppState().Role.role == Role.Manager))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 24.0),
                        child: Wrap(
                          spacing: 24.0,
                          runSpacing: 24.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Detail Order',
                              icon: const Icon(
                                Icons.fire_truck,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(
                                  'BuatInvoice',
                                  queryParameters: {
                                    'supabaseRef': serializeParam(
                                      widget.supabaseRef,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              text: 'Buat Invoice',
                              icon: const Icon(
                                Icons.fact_check_outlined,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0x0014181B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    FutureBuilder<List<MdDataShipperRow>>(
                      future: MdDataShipperTable().queryRows(
                        queryFn: (q) => q,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<MdDataShipperRow> containerMdDataShipperRowList =
                            snapshot.data!;

                        return Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Wrap(
                              spacing: 12.0,
                              runSpacing: 12.0,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.center,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 400.0,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tambah Data Shipper Kepada',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller:
                                            _model.shipperQQValueController ??=
                                                FormFieldController<String>(
                                          _model.shipperQQValue ??=
                                              editOrderDataOrderRow
                                                              ?.shipperQq !=
                                                          null &&
                                                      editOrderDataOrderRow
                                                              ?.shipperQq !=
                                                          ''
                                                  ? editOrderDataOrderRow
                                                      ?.shipperQq
                                                  : '',
                                        ),
                                        options: containerMdDataShipperRowList
                                            .map((e) => valueOrDefault<String>(
                                                  e.namaDataShipper,
                                                  '-',
                                                ))
                                            .toList(),
                                        onChanged: (val) => safeSetState(
                                            () => _model.shipperQQValue = val),
                                        width: 400.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Pilih Salah Satu',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        disabled: (FFAppState().Role.role ==
                                                Role.Admin) ||
                                            (FFAppState().Role.role ==
                                                Role.Manager),
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                                ),
                                Container(
                                  width: 400.0,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shipper',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .shipperDropdownValueController ??=
                                            FormFieldController<String>(
                                          _model.shipperDropdownValue ??=
                                              editOrderDataOrderRow?.shipper !=
                                                          null &&
                                                      editOrderDataOrderRow
                                                              ?.shipper !=
                                                          ''
                                                  ? editOrderDataOrderRow
                                                      ?.shipper
                                                  : '',
                                        ),
                                        options: containerMdDataShipperRowList
                                            .map((e) => valueOrDefault<String>(
                                                  e.namaDataShipper,
                                                  '-',
                                                ))
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.shipperDropdownValue = val),
                                        width: 400.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Pilih Shipper',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        disabled: (FFAppState().Role.role ==
                                                Role.Admin) ||
                                            (FFAppState().Role.role ==
                                                Role.Manager),
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                                ),
                                Container(
                                  width: 400.0,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'No. Job',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.shipperTextController1 ??=
                                                TextEditingController(
                                          text: valueOrDefault<String>(
                                            editOrderDataOrderRow?.noJob,
                                            '-',
                                          ),
                                        ),
                                        focusNode: _model.shipperFocusNode1,
                                        autofocus: false,
                                        readOnly: (FFAppState().Role.role ==
                                                Role.Admin) ||
                                            (FFAppState().Role.role ==
                                                Role.Manager),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Nomer Job',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .shipperTextController1Validator
                                            .asValidator(context),
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Wrap(
                        spacing: 24.0,
                        runSpacing: 24.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Wrap(
                                spacing: 24.0,
                                runSpacing: 24.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.center,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 600.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: ((FFAppState().Role.role ==
                                                      Role.Admin) ||
                                                  (FFAppState().Role.role ==
                                                      Role.Manager))
                                              ? null
                                              : () async {
                                                  final datePickedDate =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime(2050),
                                                    builder: (context, child) {
                                                      return wrapInMaterialDatePickerTheme(
                                                        context,
                                                        child!,
                                                        headerBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        headerForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        headerTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      32.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                        pickerBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        pickerForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        selectedDateTimeBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        selectedDateTimeForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        actionButtonForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        iconSize: 24.0,
                                                      );
                                                    },
                                                  );

                                                  if (datePickedDate != null) {
                                                    safeSetState(() {
                                                      _model.datePicked =
                                                          DateTime(
                                                        datePickedDate.year,
                                                        datePickedDate.month,
                                                        datePickedDate.day,
                                                      );
                                                    });
                                                  }
                                                },
                                          text: widget.editTambah ==
                                                  'Edit Order'
                                              ? (_model.datePicked == null
                                                  ? (editOrderDataOrderRow
                                                                  ?.tanggal ==
                                                              null ||
                                                          editOrderDataOrderRow
                                                                  ?.tanggal ==
                                                              ''
                                                      ? 'Tanggal Stuffing'
                                                      : '${editOrderDataOrderRow?.tanggal}/${editOrderDataOrderRow?.bulan}/${editOrderDataOrderRow?.tahun}')
                                                  : dateTimeFormat("d/M/y",
                                                      _model.datePicked))
                                              : (_model.datePicked == null
                                                  ? 'Tanggal Stuffing'
                                                  : dateTimeFormat("d/M/y",
                                                      _model.datePicked)),
                                          icon: const Icon(
                                            Icons.date_range,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 50.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.shipperTextController2 ??=
                                                  TextEditingController(
                                            text: valueOrDefault<String>(
                                              editOrderDataOrderRow?.noBooking,
                                              '-',
                                            ),
                                          ),
                                          focusNode: _model.shipperFocusNode2,
                                          autofocus: false,
                                          readOnly: (FFAppState().Role.role ==
                                                  Role.Admin) ||
                                              (FFAppState().Role.role ==
                                                  Role.Manager),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'No. Booking',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .shipperTextController2Validator
                                              .asValidator(context),
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.shipperTextController3 ??=
                                                  TextEditingController(
                                            text: valueOrDefault<String>(
                                              editOrderDataOrderRow
                                                  ?.invoiceShipper,
                                              '-',
                                            ),
                                          ),
                                          focusNode: _model.shipperFocusNode3,
                                          autofocus: false,
                                          readOnly: (FFAppState().Role.role ==
                                                  Role.Admin) ||
                                              (FFAppState().Role.role ==
                                                  Role.Manager),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Invoice Shipper',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .shipperTextController3Validator
                                              .asValidator(context),
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.shipperTextController4 ??=
                                                  TextEditingController(
                                            text: valueOrDefault<String>(
                                              editOrderDataOrderRow?.vessel,
                                              '-',
                                            ),
                                          ),
                                          focusNode: _model.shipperFocusNode4,
                                          autofocus: false,
                                          readOnly: (FFAppState().Role.role ==
                                                  Role.Admin) ||
                                              (FFAppState().Role.role ==
                                                  Role.Manager),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Vessel',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .shipperTextController4Validator
                                              .asValidator(context),
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.shipperTextController5 ??=
                                                  TextEditingController(
                                            text: valueOrDefault<String>(
                                              editOrderDataOrderRow
                                                  ?.destination,
                                              '-',
                                            ),
                                          ),
                                          focusNode: _model.shipperFocusNode5,
                                          autofocus: false,
                                          readOnly: (FFAppState().Role.role ==
                                                  Role.Admin) ||
                                              (FFAppState().Role.role ==
                                                  Role.Manager),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Destination',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .shipperTextController5Validator
                                              .asValidator(context),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 600.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FutureBuilder<List<MdDataBongkarRow>>(
                                          future:
                                              MdDataBongkarTable().queryRows(
                                            queryFn: (q) => q,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<MdDataBongkarRow>
                                                dataBongkarMdDataBongkarRowList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dataBongkarValueController ??=
                                                  FormFieldController<String>(
                                                _model.dataBongkarValue ??=
                                                    editOrderDataOrderRow
                                                                    ?.dataBongkar !=
                                                                null &&
                                                            editOrderDataOrderRow
                                                                    ?.dataBongkar !=
                                                                ''
                                                        ? editOrderDataOrderRow
                                                            ?.dataBongkar
                                                        : '',
                                              ),
                                              options:
                                                  dataBongkarMdDataBongkarRowList
                                                      .map((e) =>
                                                          e.namaDataBongkar)
                                                      .withoutNulls
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                      .dataBongkarValue = val),
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Pilih Data Bongkar',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              disabled:
                                                  (FFAppState().Role.role ==
                                                          Role.Admin) ||
                                                      (FFAppState().Role.role ==
                                                          Role.Manager),
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                        FutureBuilder<List<MdDataShipperRow>>(
                                          future: MdDataShipperTable()
                                              .querySingleRow(
                                            queryFn: (q) => q.eq(
                                              'nama_data_shipper',
                                              _model.shipperDropdownValue!,
                                            ),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<MdDataShipperRow>
                                                dropDownTempatStuffingMdDataShipperRowList =
                                                snapshot.data!;

                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final dropDownTempatStuffingMdDataShipperRow =
                                                dropDownTempatStuffingMdDataShipperRowList
                                                        .isNotEmpty
                                                    ? dropDownTempatStuffingMdDataShipperRowList
                                                        .first
                                                    : null;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownTempatStuffingValueController ??=
                                                  FormFieldController<String>(
                                                _model.dropDownTempatStuffingValue ??=
                                                    editOrderDataOrderRow
                                                                    ?.stuffingPlace !=
                                                                null &&
                                                            editOrderDataOrderRow
                                                                    ?.stuffingPlace !=
                                                                ''
                                                        ? editOrderDataOrderRow
                                                            ?.stuffingPlace
                                                        : '',
                                              ),
                                              options:
                                                  dropDownTempatStuffingMdDataShipperRow!
                                                      .stuffingPlaceDataShipper,
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .dropDownTempatStuffingValue =
                                                      val),
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Pilih Tempat Stuffing',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              disabled: _model
                                                          .shipperDropdownValue ==
                                                      null ||
                                                  _model.shipperDropdownValue ==
                                                      '',
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                        if (FFAppState().Role.role ==
                                            Role.Customer)
                                          Wrap(
                                            spacing: 12.0,
                                            runSpacing: 12.0,
                                            alignment: WrapAlignment.center,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                constraints: const BoxConstraints(
                                                  maxWidth: 500.0,
                                                ),
                                                decoration: const BoxDecoration(),
                                                child: SizedBox(
                                                  width: 400.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .keteranganTextController,
                                                    focusNode: _model
                                                        .keteranganFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Keterangan',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model
                                                        .keteranganTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius: 8.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  _model.addToKeterangan(_model
                                                      .keteranganTextController
                                                      .text);
                                                  safeSetState(() {});
                                                  safeSetState(() {
                                                    _model
                                                        .keteranganTextController
                                                        ?.clear();
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        Builder(
                                          builder: (context) {
                                            final keteranganList =
                                                _model.keterangan.toList();
                                            if (keteranganList.isEmpty) {
                                              return const Center(
                                                child: EmptyListWidget(),
                                              );
                                            }

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: keteranganList.length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(height: 4.0),
                                              itemBuilder: (context,
                                                  keteranganListIndex) {
                                                final keteranganListItem =
                                                    keteranganList[
                                                        keteranganListIndex];
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      keteranganListItem,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    if (FFAppState()
                                                            .Role
                                                            .role ==
                                                        Role.Customer)
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.removeAtIndexFromKeterangan(
                                                              keteranganListIndex);
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.delete_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if ((FFAppState().Role.role == Role.Admin) ||
                              (FFAppState().Role.role == Role.Manager))
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Perpajakan:',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Wrap(
                                      spacing: 24.0,
                                      runSpacing: 24.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 600.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'PPH23',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              FlutterFlowDropDown<double>(
                                                controller: _model
                                                        .pph23ValueController ??=
                                                    FormFieldController<double>(
                                                  _model.pph23Value ??=
                                                      editOrderDataOrderRow
                                                              ?.pph23 ?? 0.0,
                                                ),
                                                options: List<double>.from(
                                                    [0.02, 0.0]),
                                                optionLabels: const ['Show', 'Hide'],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .pph23Value = val),
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Pilih Salah Satu',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ),
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 600.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'PPN',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              FlutterFlowDropDown<double>(
                                                controller: _model
                                                        .ppnValueController ??=
                                                    FormFieldController<double>(
                                                  _model.ppnValue ??=
                                                      editOrderDataOrderRow
                                                              ?.ppn ?? 0.0,
                                                ),
                                                options: List<double>.from(
                                                    [0.11, 0.0]),
                                                optionLabels: const ['Show', 'Hide'],
                                                onChanged: (val) =>
                                                    safeSetState(() =>
                                                        _model.ppnValue = val),
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Pilih Salah Satu',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(const SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                          if (FFAppState().Role.role == Role.Customer)
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Detail Dokumen',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Wrap(
                                      spacing: 12.0,
                                      runSpacing: 12.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 176.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: FutureBuilder<
                                              List<MdDataDokumenRow>>(
                                            future:
                                                MdDataDokumenTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MdDataDokumenRow>
                                                  dropDownDokumenMdDataDokumenRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownDokumenValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownDokumenMdDataDokumenRowList
                                                        .map((e) =>
                                                            e.namaDataDokumen)
                                                        .withoutNulls
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                          .dropDownDokumenValue =
                                                      val);
                                                  safeSetState(() {});
                                                },
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Dokumen',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 176.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: FutureBuilder<
                                              List<MdDataVendorRow>>(
                                            future:
                                                MdDataVendorTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MdDataVendorRow>
                                                  dropDownVendorMdDataVendorRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownVendorValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: dropDownVendorMdDataVendorRowList
                                                    .where((e) =>
                                                        e.jenisDokumenDataVendor ==
                                                        _model
                                                            .dropDownDokumenValue)
                                                    .toList()
                                                    .map(
                                                        (e) => e.namaDataVendor)
                                                    .withoutNulls
                                                    .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropDownVendorValue =
                                                        val),
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Vendor',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: _model
                                                            .dropDownDokumenValue ==
                                                        null ||
                                                    _model.dropDownDokumenValue ==
                                                        '',
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 8.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            _model.addToDetailDokumen(
                                                DetailDokumenStruct(
                                              namaDokumen:
                                                  _model.dropDownDokumenValue,
                                              vendor:
                                                  _model.dropDownVendorValue,
                                              id: random_data.randomInteger(
                                                  1, 10000),
                                            ).toMap());
                                            safeSetState(() {});
                                            await DataHutangTable().insert({
                                              'deskripsi': DetailDokumenStruct
                                                      .maybeFromMap(_model
                                                          .detailDokumen.last)
                                                  ?.namaDokumen,
                                              'id_data_hutang':
                                                  DetailDokumenStruct
                                                          .maybeFromMap(_model
                                                              .detailDokumen
                                                              .last)
                                                      ?.id,
                                              'vendor': DetailDokumenStruct
                                                      .maybeFromMap(_model
                                                          .detailDokumen.last)
                                                  ?.vendor,
                                              'no_job': _model
                                                  .shipperTextController1.text,
                                              'status': false,
                                              'nominal': 0.0,
                                              'no_container': ['-'],
                                            });

                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model
                                                  .dropDownDokumenValueController
                                                  ?.reset();
                                              _model
                                                  .dropDownVendorValueController
                                                  ?.reset();
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final listDetailDokumen =
                                            _model.detailDokumen.toList();
                                        if (listDetailDokumen.isEmpty) {
                                          return const Center(
                                            child: EmptyListWidget(),
                                          );
                                        }

                                        return Wrap(
                                          spacing: 12.0,
                                          runSpacing: 12.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: List.generate(
                                              listDetailDokumen.length,
                                              (listDetailDokumenIndex) {
                                            final listDetailDokumenItem =
                                                listDetailDokumen[
                                                    listDetailDokumenIndex];
                                            return Container(
                                              width: 300.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              DetailDokumenStruct
                                                                      .maybeFromMap(
                                                                          listDetailDokumenItem)
                                                                  ?.namaDokumen,
                                                              '-',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              DetailDokumenStruct
                                                                      .maybeFromMap(
                                                                          listDetailDokumenItem)
                                                                  ?.vendor,
                                                              '-',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.removeAtIndexFromDetailDokumen(
                                                            listDetailDokumenIndex);
                                                        safeSetState(() {});
                                                        await DataHutangTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'id_data_hutang',
                                                            DetailDokumenStruct
                                                                    .maybeFromMap(
                                                                        listDetailDokumenItem)!
                                                                .id,
                                                          ),
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons.close,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (FFAppState().Role.role == Role.Customer)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Tambahkan Data Order',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Wrap(
                                  spacing: 12.0,
                                  runSpacing: 12.0,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.add_box,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Tambah Data Party',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            FutureBuilder<List<MdDataPartyRow>>(
                                              future:
                                                  MdDataPartyTable().queryRows(
                                                queryFn: (q) => q,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<MdDataPartyRow>
                                                    drodpdownDataPartMdDataPartyRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .drodpdownDataPartValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      drodpdownDataPartMdDataPartyRowList
                                                          .map((e) =>
                                                              e.ukuranDataParty)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .drodpdownDataPartValue =
                                                          val),
                                                  width: 400.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Pilih Salah Satu',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.add_box,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Tambah Data Truck',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                            FutureBuilder<List<MdDataTruckRow>>(
                                              future:
                                                  MdDataTruckTable().queryRows(
                                                queryFn: (q) => q,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<MdDataTruckRow>
                                                    dropdownDataTruckMdDataTruckRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropdownDataTruckValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      dropdownDataTruckMdDataTruckRowList
                                                          .map((e) => e
                                                              .namaVendorDataTruck)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropdownDataTruckValue =
                                                          val),
                                                  width: 400.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Pilih Salah Satu',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'No. Container/Seal',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ].divide(const SizedBox(width: 12.0)),
                                        ),
                                        Wrap(
                                          spacing: 12.0,
                                          runSpacing: 12.0,
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              constraints: const BoxConstraints(
                                                maxWidth: 400.0,
                                              ),
                                              decoration: const BoxDecoration(),
                                              child: SizedBox(
                                                width: 400.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .noContainerTextController,
                                                  focusNode: _model
                                                      .noContainerFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText:
                                                        'Masukkan No. Container/Seal',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  validator: _model
                                                      .noContainerTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius: 8.0,
                                              borderWidth: 1.0,
                                              buttonSize: 50.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              icon: Icon(
                                                Icons.add,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                _model.addToNoContainer(_model
                                                    .noContainerTextController
                                                    .text);
                                                safeSetState(() {});
                                                safeSetState(() {
                                                  _model
                                                      .noContainerTextController
                                                      ?.clear();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 462.0,
                                          decoration: const BoxDecoration(),
                                          child: Builder(
                                            builder: (context) {
                                              final listNoContainer =
                                                  _model.noContainer.toList();
                                              if (listNoContainer.isEmpty) {
                                                return const Center(
                                                  child: EmptyListWidget(),
                                                );
                                              }

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listNoContainer.length,
                                                itemBuilder: (context,
                                                    listNoContainerIndex) {
                                                  final listNoContainerItem =
                                                      listNoContainer[
                                                          listNoContainerIndex];
                                                  return Container(
                                                    constraints: const BoxConstraints(
                                                      maxWidth: 400.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            listNoContainerItem,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.removeAtIndexFromNoContainer(
                                                                  listNoContainerIndex);
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  ],
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.addToDataOrder(DetailOrderStruct(
                                      dataParty: DataPartyStruct(
                                        ukuran: _model.drodpdownDataPartValue,
                                      ),
                                      dataTruck: DataTruckStruct(
                                        vendor: _model.dropdownDataTruckValue,
                                      ),
                                      noContainer: _model.noContainer,
                                      id: random_data.randomInteger(1, 100000),
                                    ).toMap());
                                    safeSetState(() {});
                                    await DataHutangTable().insert({
                                      'deskripsi': valueOrDefault<String>(
                                        DetailOrderStruct.maybeFromMap(
                                                _model.dataOrder.last)
                                            ?.dataTruck
                                            .driver,
                                        '-',
                                      ),
                                      'id_data_hutang':
                                          DetailOrderStruct.maybeFromMap(
                                                  _model.dataOrder.last)
                                              ?.id,
                                      'vendor': valueOrDefault<String>(
                                        DetailOrderStruct.maybeFromMap(
                                                _model.dataOrder.last)
                                            ?.dataTruck
                                            .vendor,
                                        '-',
                                      ),
                                      'no_job':
                                          _model.shipperTextController1.text,
                                      'status': false,
                                      'nominal': 0.0,
                                      'no_container': _model.noContainer,
                                    });
                                    _model.noContainer = [];
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.drodpdownDataPartValueController
                                          ?.reset();
                                      _model.dropdownDataTruckValueController
                                          ?.reset();
                                    });
                                  },
                                  text: 'Tambahkan Data Order',
                                  icon: const Icon(
                                    Icons.add,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final listDataOrder =
                                        _model.dataOrder.toList();
                                    if (listDataOrder.isEmpty) {
                                      return const Center(
                                        child: EmptyListWidget(),
                                      );
                                    }

                                    return Wrap(
                                      spacing: 12.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children:
                                          List.generate(listDataOrder.length,
                                              (listDataOrderIndex) {
                                        final listDataOrderItem =
                                            listDataOrder[listDataOrderIndex];
                                        return DataOrderListWidget(
                                          key: Key(
                                              'Keyof6_${listDataOrderIndex}_of_${listDataOrder.length}'),
                                          nomor: listDataOrderIndex + 1,
                                          dataTruck: getJsonField(
                                            listDataOrderItem,
                                            r'''$.data_truck.vendor''',
                                          ).toString(),
                                          dataParty: getJsonField(
                                            listDataOrderItem,
                                            r'''$.data_party.ukuran''',
                                          ).toString(),
                                          nomorTruck: (getJsonField(
                                            listDataOrderItem,
                                            r'''$.no_container''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList(),
                                          show: true,
                                          hapus: () async {
                                            _model.removeAtIndexFromDataOrder(
                                                listDataOrderIndex);
                                            safeSetState(() {});
                                            await DataHutangTable().delete(
                                              matchingRows: (rows) => rows.eq(
                                                'id_data_hutang',
                                                DetailOrderStruct.maybeFromMap(
                                                        listDataOrderItem)!
                                                    .id,
                                              ),
                                            );
                                          },
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Wrap(
                        spacing: 24.0,
                        runSpacing: 12.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              if (widget.editTambah == 'Edit Order') {
                                await DataOrderTable().update(
                                  data: {
                                    'shipper': _model.shipperDropdownValue,
                                    'shipper_qq': _model.shipperQQValue,
                                    'no_job':
                                        _model.shipperTextController1.text,
                                    'no_booking':
                                        _model.shipperTextController2.text,
                                    'invoice_shipper':
                                        _model.shipperTextController3.text,
                                    'vessel':
                                        _model.shipperTextController4.text,
                                    'destination':
                                        _model.shipperTextController5.text,
                                    'data_bongkar': _model.dataBongkarValue,
                                    'stuffing_place':
                                        _model.dropDownTempatStuffingValue,
                                    'pph23': _model.pph23Value,
                                    'ppn': _model.ppnValue,
                                    'detail_dokumen': _model.detailDokumen,
                                    'data_order': _model.dataOrder,
                                    'biaya_langsung': _model.biayaLangsung,
                                    'tanggal': _model.datePicked == null
                                        ? editOrderDataOrderRow?.tanggal
                                        : dateTimeFormat(
                                            "d", _model.datePicked),
                                    'bulan': _model.datePicked == null
                                        ? editOrderDataOrderRow?.bulan
                                        : dateTimeFormat(
                                            "M", _model.datePicked),
                                    'tahun': _model.datePicked == null
                                        ? editOrderDataOrderRow?.tahun
                                        : dateTimeFormat(
                                            "y", _model.datePicked),
                                    'keterangan': _model.keterangan,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id_data_order',
                                    widget.supabaseRef!,
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Order berhasil diupdate',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              } else {
                                await DataOrderTable().insert({
                                  'shipper': _model.shipperDropdownValue,
                                  'shipper_qq': _model.shipperQQValue,
                                  'no_job': _model.shipperTextController1.text,
                                  'no_booking':
                                      _model.shipperTextController2.text,
                                  'invoice_shipper':
                                      _model.shipperTextController3.text,
                                  'vessel': _model.shipperTextController4.text,
                                  'destination':
                                      _model.shipperTextController5.text,
                                  'data_bongkar': _model.dataBongkarValue,
                                  'stuffing_place':
                                      _model.dropDownTempatStuffingValue,
                                  'pph23': _model.pph23Value,
                                  'ppn': _model.ppnValue,
                                  'detail_dokumen': _model.detailDokumen,
                                  'data_order': _model.dataOrder,
                                  'biaya_langsung': _model.biayaLangsung,
                                  'tanggal':
                                      dateTimeFormat("d", _model.datePicked),
                                  'bulan':
                                      dateTimeFormat("M", _model.datePicked),
                                  'tahun':
                                      dateTimeFormat("y", _model.datePicked),
                                  'keterangan': _model.keterangan,
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Order Sukses Dibuat',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              context.pushNamed('Order');
                            },
                            text: 'Simpan',
                            icon: const Icon(
                              Icons.save,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 500.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              await DataHutangTable().delete(
                                matchingRows: (rows) => rows.inFilter(
                                  'id_data_hutang',
                                  _model.detailDokumen
                                      .map((e) =>
                                          DetailDokumenStruct.maybeFromMap(e)
                                              ?.id)
                                      .withoutNulls
                                      .toList(),
                                ),
                              );
                              await DataHutangTable().delete(
                                matchingRows: (rows) => rows.inFilter(
                                  'id_data_hutang',
                                  _model.dataOrder
                                      .map((e) =>
                                          DetailOrderStruct.maybeFromMap(e)?.id)
                                      .withoutNulls
                                      .toList(),
                                ),
                              );
                              context.safePop();
                            },
                            text: 'Batal',
                            icon: const Icon(
                              Icons.cancel,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 500.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).error,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
