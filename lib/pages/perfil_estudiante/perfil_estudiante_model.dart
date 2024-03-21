import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_estudiante_widget.dart' show PerfilEstudianteWidget;
import 'package:flutter/material.dart';

class PerfilEstudianteModel extends FlutterFlowModel<PerfilEstudianteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaController;
  String? Function(BuildContext, String?)? txtCedulaControllerValidator;
  String? _txtCedulaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese la cédula';
    }

    return null;
  }

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  String? _txtNombreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese el nombre';
    }

    return null;
  }

  // State field(s) for txtApellido1 widget.
  FocusNode? txtApellido1FocusNode;
  TextEditingController? txtApellido1Controller;
  String? Function(BuildContext, String?)? txtApellido1ControllerValidator;
  String? _txtApellido1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese el primer apellido';
    }

    return null;
  }

  // State field(s) for txtApellido2 widget.
  FocusNode? txtApellido2FocusNode;
  TextEditingController? txtApellido2Controller;
  String? Function(BuildContext, String?)? txtApellido2ControllerValidator;
  String? _txtApellido2ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese el segundo apellido';
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  String? _txtCorreoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese el correo electrónico';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Formato inválido';
    }
    return null;
  }

  // State field(s) for txtGrupo widget.
  FocusNode? txtGrupoFocusNode;
  TextEditingController? txtGrupoController;
  String? Function(BuildContext, String?)? txtGrupoControllerValidator;
  // State field(s) for txtGrado widget.
  FocusNode? txtGradoFocusNode;
  TextEditingController? txtGradoController;
  String? Function(BuildContext, String?)? txtGradoControllerValidator;
  // State field(s) for txtEdad widget.
  FocusNode? txtEdadFocusNode;
  TextEditingController? txtEdadController;
  String? Function(BuildContext, String?)? txtEdadControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtCedulaControllerValidator = _txtCedulaControllerValidator;
    txtNombreControllerValidator = _txtNombreControllerValidator;
    txtApellido1ControllerValidator = _txtApellido1ControllerValidator;
    txtApellido2ControllerValidator = _txtApellido2ControllerValidator;
    txtCorreoControllerValidator = _txtCorreoControllerValidator;
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

    txtGrupoFocusNode?.dispose();
    txtGrupoController?.dispose();

    txtGradoFocusNode?.dispose();
    txtGradoController?.dispose();

    txtEdadFocusNode?.dispose();
    txtEdadController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
