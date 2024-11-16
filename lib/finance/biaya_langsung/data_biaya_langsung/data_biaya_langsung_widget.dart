import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'data_biaya_langsung_model.dart';
export 'data_biaya_langsung_model.dart';

class DataBiayaLangsungWidget extends StatefulWidget {
  const DataBiayaLangsungWidget({
    super.key,
    required this.supabaseRef,
    this.total,
  });

  final int? supabaseRef;
  final double? total;

  @override
  State<DataBiayaLangsungWidget> createState() =>
      _DataBiayaLangsungWidgetState();
}

class _DataBiayaLangsungWidgetState extends State<DataBiayaLangsungWidget> {
  late DataBiayaLangsungModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataBiayaLangsungModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.supabaseRef != null) {
        _model.apiOrder = await MasterDataGroup.dataOrderSingleCall.call(
          id: widget.supabaseRef,
        );

        _model.biayaLangsung = getJsonField(
          (_model.apiOrder?.jsonBody ?? ''),
          r'''$[:].biaya_langsung''',
          true,
        )!
            .toList()
            .cast<dynamic>();
        _model.totals = valueOrDefault<double>(
          widget.total,
          0.0,
        );
        safeSetState(() {});
      }
    });

    _model.keteranganTextController1 ??= TextEditingController();
    _model.keteranganFocusNode1 ??= FocusNode();

    _model.keteranganTextController2 ??= TextEditingController();
    _model.keteranganFocusNode2 ??= FocusNode();

    _model.keteranganTextController3 ??= TextEditingController();
    _model.keteranganFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<DataOrderRow>>(
      future: DataOrderTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id_data_order',
          widget.supabaseRef!,
        ),
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
        List<DataOrderRow> containerDataOrderRowList = snapshot.data!;

        final containerDataOrderRow = containerDataOrderRowList.isNotEmpty
            ? containerDataOrderRowList.first
            : null;

        return Container(
          width: 700.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 64.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail Data Order',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 24.0,
                          runSpacing: 24.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'No. Booking',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.noBooking,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Inv. Shipper',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.invoiceShipper,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vessel',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.vessel,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tujuan',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.destination,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tempat Bongkar',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.dataBongkar,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Shipper',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    containerDataOrderRow?.shipper,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tanggal Stuffing',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  '${containerDataOrderRow?.tanggal}/${containerDataOrderRow?.bulan}/${containerDataOrderRow?.tahun}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Detail Biaya Langsung',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: SizedBox(
                                      width: 400.0,
                                      child: TextFormField(
                                        controller:
                                            _model.keteranganTextController1,
                                        focusNode: _model.keteranganFocusNode1,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Deskripsi',
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
                                            .keteranganTextController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: SizedBox(
                                      width: 400.0,
                                      child: TextFormField(
                                        controller:
                                            _model.keteranganTextController2,
                                        focusNode: _model.keteranganFocusNode2,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Nominal',
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
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .keteranganTextController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    constraints: const BoxConstraints(
                                      maxWidth: 200.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: SizedBox(
                                      width: 400.0,
                                      child: TextFormField(
                                        controller:
                                            _model.keteranganTextController3,
                                        focusNode: _model.keteranganFocusNode3,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Kuantiti',
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
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .keteranganTextController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 8.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    icon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      _model
                                          .addToBiayaLangsung(<String, dynamic>{
                                        'keterangan': _model
                                            .keteranganTextController1.text,
                                        'nominal': _model
                                            .keteranganTextController2.text,
                                        'kuantiti': _model
                                            .keteranganTextController3.text,
                                      });
                                      _model.addToTotal(int.parse(_model
                                              .keteranganTextController3.text) *
                                          double.parse(_model
                                              .keteranganTextController2.text));
                                      safeSetState(() {});
                                      _model.totals = valueOrDefault<double>(
                                        (List<double> var1, double var2) {
                                          return var1.reduce((value, element) =>
                                                  value + element) +
                                              var2;
                                        }(
                                            _model.total.toList(),
                                            valueOrDefault<double>(
                                              _model.totals,
                                              0.0,
                                            )),
                                        0.0,
                                      );
                                      safeSetState(() {});
                                      safeSetState(() {
                                        _model.keteranganTextController1
                                            ?.clear();
                                        _model.keteranganTextController2
                                            ?.clear();
                                        _model.keteranganTextController3
                                            ?.clear();
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Builder(
                                builder: (context) {
                                  final list = _model.biayaLangsung.toList();
                                  if (list.isEmpty) {
                                    return const EmptyListWidget();
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: list.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 4.0),
                                    itemBuilder: (context, listIndex) {
                                      final listItem = list[listIndex];
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        listItem,
                                                        r'''$.keterangan''',
                                                      )?.toString(),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    '${valueOrDefault<String>(
                                                      getJsonField(
                                                        listItem,
                                                        r'''$.nominal''',
                                                      )?.toString(),
                                                      '-',
                                                    )} - ${getJsonField(
                                                      listItem,
                                                      r'''$.kuantiti''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(height: 4.0)),
                                              ),
                                              if (FFAppState().Role.role ==
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
                                                    _model
                                                        .removeAtIndexFromBiayaLangsung(
                                                            listIndex);
                                                    _model
                                                        .removeAtIndexFromTotal(
                                                            listIndex);
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.delete_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                formatNumber(
                                  _model.totals,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.commaDecimal,
                                  currency: 'Rp ',
                                ),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await DataOrderTable().update(
                        data: {
                          'biaya_langsung': _model.biayaLangsung,
                          'total': valueOrDefault<double>(
                            _model.totals,
                            0.0,
                          ),
                        },
                        matchingRows: (rows) => rows.eq(
                          'id_data_order',
                          widget.supabaseRef!,
                        ),
                      );
                      Navigator.pop(context);
                    },
                    text: 'Simpan',
                    icon: const Icon(
                      Icons.save,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
