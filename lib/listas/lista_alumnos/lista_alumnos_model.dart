import '/flutter_flow/flutter_flow_util.dart';
import 'lista_alumnos_widget.dart' show ListaAlumnosWidget;
import 'package:flutter/material.dart';

class ListaAlumnosModel extends FlutterFlowModel<ListaAlumnosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtSearchBar widget.
  FocusNode? txtSearchBarFocusNode;
  TextEditingController? txtSearchBarController;
  String? Function(BuildContext, String?)? txtSearchBarControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtSearchBarFocusNode?.dispose();
    txtSearchBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
