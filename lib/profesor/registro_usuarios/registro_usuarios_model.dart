import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registro_usuarios_widget.dart' show RegistroUsuariosWidget;
import 'package:flutter/material.dart';

class RegistroUsuariosModel extends FlutterFlowModel<RegistroUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFCedula widget.
  FocusNode? txtFCedulaFocusNode;
  TextEditingController? txtFCedulaController;
  String? Function(BuildContext, String?)? txtFCedulaControllerValidator;
  // State field(s) for txtFNombre widget.
  FocusNode? txtFNombreFocusNode;
  TextEditingController? txtFNombreController;
  String? Function(BuildContext, String?)? txtFNombreControllerValidator;
  // State field(s) for txtFPApellido widget.
  FocusNode? txtFPApellidoFocusNode;
  TextEditingController? txtFPApellidoController;
  String? Function(BuildContext, String?)? txtFPApellidoControllerValidator;
  // State field(s) for txtFSApellido widget.
  FocusNode? txtFSApellidoFocusNode;
  TextEditingController? txtFSApellidoController;
  String? Function(BuildContext, String?)? txtFSApellidoControllerValidator;
  // State field(s) for TxtFCorreo widget.
  FocusNode? txtFCorreoFocusNode;
  TextEditingController? txtFCorreoController;
  String? Function(BuildContext, String?)? txtFCorreoControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFCedulaFocusNode?.dispose();
    txtFCedulaController?.dispose();

    txtFNombreFocusNode?.dispose();
    txtFNombreController?.dispose();

    txtFPApellidoFocusNode?.dispose();
    txtFPApellidoController?.dispose();

    txtFSApellidoFocusNode?.dispose();
    txtFSApellidoController?.dispose();

    txtFCorreoFocusNode?.dispose();
    txtFCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
