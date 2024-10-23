import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hitfitvideo_widget.dart' show HitfitvideoWidget;
import 'package:flutter/material.dart';

class HitfitvideoModel extends FlutterFlowModel<HitfitvideoWidget> {
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
