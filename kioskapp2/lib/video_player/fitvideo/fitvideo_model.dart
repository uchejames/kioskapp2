import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fitvideo_widget.dart' show FitvideoWidget;
import 'package:flutter/material.dart';

class FitvideoModel extends FlutterFlowModel<FitvideoWidget> {
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
