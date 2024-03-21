import '/components/cmpside_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'misgrupos_profesor_widget.dart' show MisgruposProfesorWidget;
import 'package:flutter/material.dart';

class MisgruposProfesorModel extends FlutterFlowModel<MisgruposProfesorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cmpsideMenu component.
  late CmpsideMenuModel cmpsideMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cmpsideMenuModel = createModel(context, () => CmpsideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cmpsideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
