import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_tarea_profesor_widget.dart' show CrearTareaProfesorWidget;
import 'package:flutter/material.dart';

class CrearTareaProfesorModel
    extends FlutterFlowModel<CrearTareaProfesorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombreTarea widget.
  FocusNode? txtNombreTareaFocusNode;
  TextEditingController? txtNombreTareaController;
  String? Function(BuildContext, String?)? txtNombreTareaControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaController;
  String? Function(BuildContext, String?)? txtFechaControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNombreTareaFocusNode?.dispose();
    txtNombreTareaController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
