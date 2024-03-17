import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_usuarios_widget.dart' show CrearUsuariosWidget;
import 'package:flutter/material.dart';

class CrearUsuariosModel extends FlutterFlowModel<CrearUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaController;
  String? Function(BuildContext, String?)? txtCedulaControllerValidator;
  String? _txtCedulaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'v8mscy59' /* Por favor ingrese la cédula */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        '50e1w0gk' /* El mínimo de caractéres es 9 */,
      );
    }
    if (val.length > 11) {
      return FFLocalizations.of(context).getText(
        '2g4qi8a7' /* El máximo de caracéres es 11 */,
      );
    }
    if (!RegExp('^[a-zA-Z0-9]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '8btq8unt' /* Formato inválido */,
      );
    }
    return null;
  }

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  String? _txtNombreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '27tiwtd2' /* Por favor ingrese el nombre */,
      );
    }

    return null;
  }

  // State field(s) for txtApellido1 widget.
  FocusNode? txtApellido1FocusNode;
  TextEditingController? txtApellido1Controller;
  String? Function(BuildContext, String?)? txtApellido1ControllerValidator;
  String? _txtApellido1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8pcprswr' /* Por favor ingrese el primer ap... */,
      );
    }

    return null;
  }

  // State field(s) for txtApellido2 widget.
  FocusNode? txtApellido2FocusNode;
  TextEditingController? txtApellido2Controller;
  String? Function(BuildContext, String?)? txtApellido2ControllerValidator;
  String? _txtApellido2ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2hy5rxns' /* Por favor ingrese el segundo a... */,
      );
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  String? _txtCorreoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '12uwhvrw' /* Por favor ingrese un correo el... */,
      );
    }

    if (!RegExp('^\\S+@\\S+\\.\\S+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '66r7owji' /* Formato inválido */,
      );
    }
    return null;
  }

  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaControllerValidator;
  String? _txtContrasenaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5h8os7qo' /* Por favor ingrese una contrase... */,
      );
    }

    return null;
  }

  // State field(s) for ddRol widget.
  String? ddRolValue;
  FormFieldController<String>? ddRolValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtCedulaControllerValidator = _txtCedulaControllerValidator;
    txtNombreControllerValidator = _txtNombreControllerValidator;
    txtApellido1ControllerValidator = _txtApellido1ControllerValidator;
    txtApellido2ControllerValidator = _txtApellido2ControllerValidator;
    txtCorreoControllerValidator = _txtCorreoControllerValidator;
    txtContrasenaVisibility = false;
    txtContrasenaControllerValidator = _txtContrasenaControllerValidator;
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
