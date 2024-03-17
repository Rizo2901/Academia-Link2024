import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_usuarios_widget.dart' show CrearUsuariosWidget;
import 'package:flutter/material.dart';

class CrearUsuariosModel extends FlutterFlowModel<CrearUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaController;
  String? Function(BuildContext, String?)? txtCedulaControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtApellido1 widget.
  FocusNode? txtApellido1FocusNode;
  TextEditingController? txtApellido1Controller;
  String? Function(BuildContext, String?)? txtApellido1ControllerValidator;
  // State field(s) for txtApellido2 widget.
  FocusNode? txtApellido2FocusNode;
  TextEditingController? txtApellido2Controller;
  String? Function(BuildContext, String?)? txtApellido2ControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaControllerValidator;
  // State field(s) for ddRol widget.
  String? ddRolValue;
  FormFieldController<String>? ddRolValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtContrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtCedulaFocusNode?.dispose();
    txtCedulaController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtApellido1FocusNode?.dispose();
    txtApellido1Controller?.dispose();

    txtApellido2FocusNode?.dispose();
    txtApellido2Controller?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
