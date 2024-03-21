import '/components/cmpside_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'creargrupos_widget.dart' show CreargruposWidget;
import 'package:flutter/material.dart';

class CreargruposModel extends FlutterFlowModel<CreargruposWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFSeccion widget.
  FocusNode? txtFSeccionFocusNode;
  TextEditingController? txtFSeccionController;
  String? Function(BuildContext, String?)? txtFSeccionControllerValidator;
  // State field(s) for txtFProfesor widget.
  FocusNode? txtFProfesorFocusNode;
  TextEditingController? txtFProfesorController;
  String? Function(BuildContext, String?)? txtFProfesorControllerValidator;
  // State field(s) for dropMaterias widget.
  List<String>? dropMateriasValue;
  FormFieldController<List<String>>? dropMateriasValueController;
  // State field(s) for txtCantEstudiante widget.
  FocusNode? txtCantEstudianteFocusNode;
  TextEditingController? txtCantEstudianteController;
  String? Function(BuildContext, String?)? txtCantEstudianteControllerValidator;
  // Model for cmpsideMenu component.
  late CmpsideMenuModel cmpsideMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cmpsideMenuModel = createModel(context, () => CmpsideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFSeccionFocusNode?.dispose();
    txtFSeccionController?.dispose();

    txtFProfesorFocusNode?.dispose();
    txtFProfesorController?.dispose();

    txtCantEstudianteFocusNode?.dispose();
    txtCantEstudianteController?.dispose();

    cmpsideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
