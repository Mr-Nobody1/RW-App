import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_component_widget.dart' show ContactComponentWidget;
import 'package:flutter/material.dart';

class ContactComponentModel extends FlutterFlowModel<ContactComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  dynamic selectedUserData;

  ///  State fields for stateful widgets in this component.

  // State field(s) for SeaerchTextField widget.
  FocusNode? seaerchTextFieldFocusNode;
  TextEditingController? seaerchTextFieldTextController;
  String? Function(BuildContext, String?)?
      seaerchTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchUsers)] action in SeaerchTextField widget.
  ApiCallResponse? apiResultuid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    seaerchTextFieldFocusNode?.dispose();
    seaerchTextFieldTextController?.dispose();
  }
}
