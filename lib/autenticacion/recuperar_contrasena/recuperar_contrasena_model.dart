import '/flutter_flow/flutter_flow_util.dart';
import 'recuperar_contrasena_widget.dart' show RecuperarContrasenaWidget;
import 'package:flutter/material.dart';

class RecuperarContrasenaModel
    extends FlutterFlowModel<RecuperarContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TxtFCorreo widget.
  FocusNode? txtFCorreoFocusNode;
  TextEditingController? txtFCorreoController;
  String? Function(BuildContext, String?)? txtFCorreoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFCorreoFocusNode?.dispose();
    txtFCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
