import '/components/cmpside_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lista_likes_pendiente_widget.dart' show ListaLikesPendienteWidget;
import 'package:flutter/material.dart';

class ListaLikesPendienteModel
    extends FlutterFlowModel<ListaLikesPendienteWidget> {
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
