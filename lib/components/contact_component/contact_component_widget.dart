import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'contact_component_model.dart';
export 'contact_component_model.dart';

class ContactComponentWidget extends StatefulWidget {
  const ContactComponentWidget({super.key});

  @override
  State<ContactComponentWidget> createState() => _ContactComponentWidgetState();
}

class _ContactComponentWidgetState extends State<ContactComponentWidget> {
  late ContactComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactComponentModel());

    _model.seaerchTextFieldTextController ??= TextEditingController();
    _model.seaerchTextFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.8,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Color(0xFFEA9FB9),
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              Text(
                'New Contact',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Lato',
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.seaerchTextFieldTextController,
                  focusNode: _model.seaerchTextFieldFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.seaerchTextFieldTextController',
                    Duration(milliseconds: 2000),
                    () async {
                      _model.apiResultuid = await SearchUsersCall.call(
                        searchString:
                            _model.seaerchTextFieldTextController.text,
                        userID: currentUserUid,
                      );

                      _model.apiResult = (_model.apiResultuid?.jsonBody ?? '')
                          .toList()
                          .cast<dynamic>();
                      safeSetState(() {});

                      safeSetState(() {});
                    },
                  ),
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Search Members',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Lato',
                              letterSpacing: 0.0,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Lato',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        letterSpacing: 0.0,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.seaerchTextFieldTextControllerValidator
                      .asValidator(context),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Builder(
                    builder: (context) {
                      final searchedUsers = _model.apiResult.toList();

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: searchedUsers.length,
                        itemBuilder: (context, searchedUsersIndex) {
                          final searchedUsersItem =
                              searchedUsers[searchedUsersIndex];
                          return Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/972/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      getJsonField(
                                        searchedUsersItem,
                                        r'''$.full_name''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (_model.selectedUserData ==
                                          searchedUsersItem) {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.selectedUserData = null;
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.check_circle,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        );
                                      } else {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.selectedUserData =
                                                searchedUsersItem;
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.circle_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  if (_model.selectedUserData != null) {
                    await ChatsTable().insert({
                      'chat_name': getJsonField(
                        _model.selectedUserData,
                        r'''$.full_name''',
                      ).toString(),
                      'chat_description': getJsonField(
                        _model.selectedUserData,
                        r'''$.userBio''',
                      ).toString(),
                      'chat_members': (String uid, String chatMembers) {
                        return [chatMembers] + [uid];
                      }(
                          currentUserUid,
                          getJsonField(
                            _model.selectedUserData,
                            r'''$.user_id''',
                          ).toString()),
                    });

                    context.pushNamed(ChatListWidget.routeName);
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('No user selected'),
                          content: Text('Please select a user to chat'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                text: 'Add Contact',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ].divide(SizedBox(height: 24.0)).addToEnd(SizedBox(height: 48.0)),
          ),
        ),
      ),
    );
  }
}
