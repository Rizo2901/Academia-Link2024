import '/components/cmpside_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_anuncios_widget.dart' show EditarAnunciosWidget;
import 'package:flutter/material.dart';

class EditarAnunciosModel extends FlutterFlowModel<EditarAnunciosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEditarTitulo widget.
  FocusNode? txtEditarTituloFocusNode;
  TextEditingController? txtEditarTituloController;
  String? Function(BuildContext, String?)? txtEditarTituloControllerValidator;
  String? _txtEditarTituloControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese el título';
    }

    return null;
  }

  // State field(s) for txtEditarAnuncio widget.
  FocusNode? txtEditarAnuncioFocusNode;
  TextEditingController? txtEditarAnuncioController;
  String? Function(BuildContext, String?)? txtEditarAnuncioControllerValidator;
  String? _txtEditarAnuncioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese la descripción';
    }

    return null;
  }

  // Model for cmpsideMenu component.
  late CmpsideMenuModel cmpsideMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtEditarTituloControllerValidator = _txtEditarTituloControllerValidator;
    txtEditarAnuncioControllerValidator = _txtEditarAnuncioControllerValidator;
    cmpsideMenuModel = createModel(context, () => CmpsideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEditarTituloFocusNode?.dispose();
    txtEditarTituloController?.dispose();

    txtEditarAnuncioFocusNode?.dispose();
    txtEditarAnuncioController?.dispose();

    cmpsideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
