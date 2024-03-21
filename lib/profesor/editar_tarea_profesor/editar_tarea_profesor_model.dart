import '/components/cmpside_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_tarea_profesor_widget.dart' show EditarTareaProfesorWidget;
import 'package:flutter/material.dart';

class EditarTareaProfesorModel
    extends FlutterFlowModel<EditarTareaProfesorWidget> {
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
  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
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
    txtNombreTareaFocusNode?.dispose();
    txtNombreTareaController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();

    cmpsideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
