import '/components/cmpside_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lista_estudiantes_widget.dart' show ListaEstudiantesWidget;
import 'package:flutter/material.dart';

class ListaEstudiantesModel extends FlutterFlowModel<ListaEstudiantesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtSearchBar widget.
  FocusNode? txtSearchBarFocusNode;
  TextEditingController? txtSearchBarController;
  String? Function(BuildContext, String?)? txtSearchBarControllerValidator;
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
    txtSearchBarFocusNode?.dispose();
    txtSearchBarController?.dispose();

    cmpsideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
