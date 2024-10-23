import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'taichi_widget.dart' show TaichiWidget;
import 'package:flutter/material.dart';

class TaichiModel extends FlutterFlowModel<TaichiWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
