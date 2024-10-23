import '/components/confirm_exit_password/confirm_exit_password_widget.dart';
import '/components/confirm_password_menu2/confirm_password_menu2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlutterFlowIconButton(
          buttonSize: 55.0,
          icon: Icon(
            Icons.other_houses_outlined,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          onPressed: () async {
            context.pushNamed('HomePage');
          },
        ),
        FlutterFlowIconButton(
          buttonSize: 55.0,
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        FlutterFlowIconButton(
          buttonSize: 55.0,
          icon: Icon(
            Icons.arrow_circle_right_outlined,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/logoicon.jpg',
              width: 72.0,
              height: 50.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              enableDrag: false,
              context: context,
              builder: (context) {
                return WebViewAware(
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: const ConfirmPasswordMenu2Widget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          child: Icon(
            Icons.grid_view,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
        FlutterFlowIconButton(
          buttonSize: 55.0,
          icon: Icon(
            Icons.cast_connected_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        FlutterFlowIconButton(
          buttonSize: 55.0,
          icon: Icon(
            Icons.cancel_outlined,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              enableDrag: false,
              context: context,
              builder: (context) {
                return WebViewAware(
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: const ConfirmExitPasswordWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
        ),
      ],
    );
  }
}
