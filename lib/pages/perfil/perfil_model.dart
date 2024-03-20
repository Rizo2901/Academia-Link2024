import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
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
        'b4pa2tpc' /* Por favor ingrese la cédula */,
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
        'tuya9iga' /* Por favor ingrese el nombre */,
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
        'eyuv3fti' /* Por favor ingrese el primer ap... */,
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
        '5outqyag' /* Por favor ingrese el segundo a... */,
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
        'gduyytai' /* Por favor ingrese el correo el... */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '8btq8unt' /* Formato inválido */,
      );
    }
    return null;
  }

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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
