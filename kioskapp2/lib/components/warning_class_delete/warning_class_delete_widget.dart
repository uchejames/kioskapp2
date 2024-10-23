import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'warning_class_delete_model.dart';
export 'warning_class_delete_model.dart';

class WarningClassDeleteWidget extends StatefulWidget {
  const WarningClassDeleteWidget({super.key});

  @override
  State<WarningClassDeleteWidget> createState() =>
      _WarningClassDeleteWidgetState();
}

class _WarningClassDeleteWidgetState extends State<WarningClassDeleteWidget> {
  late WarningClassDeleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarningClassDeleteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(1.0, -1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 50.0, 50.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              borderWidth: 1.0,
              buttonSize: 48.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.clear_rounded,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 15.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Container(
          width: 120.0,
          height: 120.0,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/1pvfp_!.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(40.0, 30.0, 40.0, 30.0),
          child: Text(
            'You are about to  delete this from the class',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).labelLargeFamily),
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 30.0),
            child: Text(
              'Do you wish to delete this?',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: FFButtonWidget(
            onPressed: () async {
              Navigator.pop(context);
            },
            text: 'Delete it!',
            options: FFButtonOptions(
              width: 130.0,
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: const Color(0xFFB8393A),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Colors.white,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(22.0),
            ),
          ),
        ),
      ],
    );
  }
}
