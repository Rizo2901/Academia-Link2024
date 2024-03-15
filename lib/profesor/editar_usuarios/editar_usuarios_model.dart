import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_usuarios_widget.dart' show EditarUsuariosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuariosModel extends FlutterFlowModel<EditarUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFCedula widget.
  FocusNode? txtFCedulaFocusNode1;
  TextEditingController? txtFCedulaController1;
  String? Function(BuildContext, String?)? txtFCedulaController1Validator;
  // State field(s) for txtFCedula widget.
  FocusNode? txtFCedulaFocusNode2;
  TextEditingController? txtFCedulaController2;
  String? Function(BuildContext, String?)? txtFCedulaController2Validator;
  // State field(s) for txtFCedula widget.
  FocusNode? txtFCedulaFocusNode3;
  TextEditingController? txtFCedulaController3;
  String? Function(BuildContext, String?)? txtFCedulaController3Validator;
  // State field(s) for txtFCedula widget.
  FocusNode? txtFCedulaFocusNode4;
  TextEditingController? txtFCedulaController4;
  String? Function(BuildContext, String?)? txtFCedulaController4Validator;
  // State field(s) for txtFCedula widget.
  FocusNode? txtFCedulaFocusNode5;
  TextEditingController? txtFCedulaController5;
  String? Function(BuildContext, String?)? txtFCedulaController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFCedulaFocusNode1?.dispose();
    txtFCedulaController1?.dispose();

    txtFCedulaFocusNode2?.dispose();
    txtFCedulaController2?.dispose();

    txtFCedulaFocusNode3?.dispose();
    txtFCedulaController3?.dispose();

    txtFCedulaFocusNode4?.dispose();
    txtFCedulaController4?.dispose();

    txtFCedulaFocusNode5?.dispose();
    txtFCedulaController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
