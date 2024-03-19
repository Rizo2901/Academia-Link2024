import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TxtFCorreo widget.
  FocusNode? txtFCorreoFocusNode;
  TextEditingController? txtFCorreoController;
  String? Function(BuildContext, String?)? txtFCorreoControllerValidator;
  String? _txtFCorreoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wsoxwt1e' /* Digite el correo electrónico */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '8btq8unt' /* Formato inválido */,
      );
    }
    return null;
  }

  // State field(s) for TxtFContrasena widget.
  FocusNode? txtFContrasenaFocusNode;
  TextEditingController? txtFContrasenaController;
  late bool txtFContrasenaVisibility;
  String? Function(BuildContext, String?)? txtFContrasenaControllerValidator;
  String? _txtFContrasenaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ajlawe68' /* Digite la contraseña */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtFCorreoControllerValidator = _txtFCorreoControllerValidator;
    txtFContrasenaVisibility = false;
    txtFContrasenaControllerValidator = _txtFContrasenaControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFCorreoFocusNode?.dispose();
    txtFCorreoController?.dispose();

    txtFContrasenaFocusNode?.dispose();
    txtFContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
