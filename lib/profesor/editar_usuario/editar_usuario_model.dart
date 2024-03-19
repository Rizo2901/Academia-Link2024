import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNuevaCedula widget.
  FocusNode? txtNuevaCedulaFocusNode;
  TextEditingController? txtNuevaCedulaController;
  String? Function(BuildContext, String?)? txtNuevaCedulaControllerValidator;
  String? _txtNuevaCedulaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nggs14d2' /* Por favor ingrese la cédula */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        'anuvq0od' /* El mínimo de caractéres es 9 */,
      );
    }
    if (val.length > 11) {
      return FFLocalizations.of(context).getText(
        'g25mdsvb' /* El máximo de caracéres es 11 */,
      );
    }
    if (!RegExp('^[a-zA-Z0-9]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'yueprygm' /* Formato inválido */,
      );
    }
    return null;
  }

  // State field(s) for txtNuevoNombre widget.
  FocusNode? txtNuevoNombreFocusNode;
  TextEditingController? txtNuevoNombreController;
  String? Function(BuildContext, String?)? txtNuevoNombreControllerValidator;
  String? _txtNuevoNombreControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ffg5bm3b' /* Por favor ingrese el nombre */,
      );
    }

    return null;
  }

  // State field(s) for txtNuevoApellido1 widget.
  FocusNode? txtNuevoApellido1FocusNode;
  TextEditingController? txtNuevoApellido1Controller;
  String? Function(BuildContext, String?)? txtNuevoApellido1ControllerValidator;
  String? _txtNuevoApellido1ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i8pjv5ko' /* Por favor ingrese el primer ap... */,
      );
    }

    return null;
  }

  // State field(s) for txtNuevoApellido2 widget.
  FocusNode? txtNuevoApellido2FocusNode;
  TextEditingController? txtNuevoApellido2Controller;
  String? Function(BuildContext, String?)? txtNuevoApellido2ControllerValidator;
  String? _txtNuevoApellido2ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ofv4z6r8' /* Por favor ingrese el segundo a... */,
      );
    }

    return null;
  }

  // State field(s) for txtNuevoCorreo widget.
  FocusNode? txtNuevoCorreoFocusNode;
  TextEditingController? txtNuevoCorreoController;
  String? Function(BuildContext, String?)? txtNuevoCorreoControllerValidator;
  String? _txtNuevoCorreoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lx6byuvx' /* Por favor ingrese un correo el... */,
      );
    }

    if (!RegExp('^\\S+@\\S+\\.\\S+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'i0zk6j0m' /* Formato inválido */,
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
    txtNuevaCedulaControllerValidator = _txtNuevaCedulaControllerValidator;
    txtNuevoNombreControllerValidator = _txtNuevoNombreControllerValidator;
    txtNuevoApellido1ControllerValidator =
        _txtNuevoApellido1ControllerValidator;
    txtNuevoApellido2ControllerValidator =
        _txtNuevoApellido2ControllerValidator;
    txtNuevoCorreoControllerValidator = _txtNuevoCorreoControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNuevaCedulaFocusNode?.dispose();
    txtNuevaCedulaController?.dispose();

    txtNuevoNombreFocusNode?.dispose();
    txtNuevoNombreController?.dispose();

    txtNuevoApellido1FocusNode?.dispose();
    txtNuevoApellido1Controller?.dispose();

    txtNuevoApellido2FocusNode?.dispose();
    txtNuevoApellido2Controller?.dispose();

    txtNuevoCorreoFocusNode?.dispose();
    txtNuevoCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
