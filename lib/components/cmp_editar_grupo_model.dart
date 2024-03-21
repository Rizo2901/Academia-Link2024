import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cmp_editar_grupo_widget.dart' show CmpEditarGrupoWidget;
import 'package:flutter/material.dart';

class CmpEditarGrupoModel extends FlutterFlowModel<CmpEditarGrupoWidget> {
  ///  State fields for stateful widgets in this component.

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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtFSeccionFocusNode?.dispose();
    txtFSeccionController?.dispose();

    txtFProfesorFocusNode?.dispose();
    txtFProfesorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
