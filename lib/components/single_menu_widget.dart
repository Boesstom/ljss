import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'single_menu_model.dart';
export 'single_menu_model.dart';

class SingleMenuWidget extends StatefulWidget {
  const SingleMenuWidget({
    super.key,
    this.judul,
    this.icon,
    bool? aktif,
  }) : aktif = aktif ?? false;

  final String? judul;
  final Widget? icon;
  final bool aktif;

  @override
  State<SingleMenuWidget> createState() => _SingleMenuWidgetState();
}

class _SingleMenuWidgetState extends State<SingleMenuWidget> {
  late SingleMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: () {
            if (_model.mouseRegionHovered == true) {
              return FlutterFlowTheme.of(context).accent1;
            } else if (widget.aktif == true) {
              return FlutterFlowTheme.of(context).accent1;
            } else {
              return const Color(0x00000000);
            }
          }(),
          borderRadius: BorderRadius.circular(12.0),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              widget.icon!,
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  widget.judul!,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
