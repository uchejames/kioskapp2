import '/components/class_select/class_select_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'add_new_stretch_model.dart';
export 'add_new_stretch_model.dart';

class AddNewStretchWidget extends StatefulWidget {
  const AddNewStretchWidget({super.key});

  @override
  State<AddNewStretchWidget> createState() => _AddNewStretchWidgetState();
}

class _AddNewStretchWidgetState extends State<AddNewStretchWidget> {
  late AddNewStretchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewStretchModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      buttonSize: 55.0,
                      icon: Icon(
                        Icons.other_houses_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
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
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterFlowIconButton(
                      buttonSize: 55.0,
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
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
                          'assets/images/white_logo.jpg',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      buttonSize: 55.0,
                      icon: Icon(
                        Icons.grid_view,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterFlowIconButton(
                      buttonSize: 55.0,
                      icon: Icon(
                        Icons.cast_connected_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
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
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
                wrapWithModel(
                  model: _model.classSelectModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const ClassSelectWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
