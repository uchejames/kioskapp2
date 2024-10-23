import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'barbell_widget.dart' show BarbellWidget;
import 'package:flutter/material.dart';

class BarbellModel extends FlutterFlowModel<BarbellWidget> {
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
