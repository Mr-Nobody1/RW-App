import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_group_component_widget.dart' show CreateGroupComponentWidget;
import 'package:flutter/material.dart';

class CreateGroupComponentModel
    extends FlutterFlowModel<CreateGroupComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for GroupTextField widget.
  FocusNode? groupTextFieldFocusNode;
  TextEditingController? groupTextFieldTextController;
  String? Function(BuildContext, String?)?
      groupTextFieldTextControllerValidator;
  // State field(s) for GrouDescriptionTextField widget.
  FocusNode? grouDescriptionTextFieldFocusNode;
  TextEditingController? grouDescriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      grouDescriptionTextFieldTextControllerValidator;
  // State field(s) for SeaerchTextField widget.
  FocusNode? seaerchTextFieldFocusNode;
  TextEditingController? seaerchTextFieldTextController;
  String? Function(BuildContext, String?)?
      seaerchTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchUsers)] action in SeaerchTextField widget.
  ApiCallResponse? apiResultuid;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    groupTextFieldFocusNode?.dispose();
    groupTextFieldTextController?.dispose();

    grouDescriptionTextFieldFocusNode?.dispose();
    grouDescriptionTextFieldTextController?.dispose();

    seaerchTextFieldFocusNode?.dispose();
    seaerchTextFieldTextController?.dispose();
  }
}
