import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'chat_page_model.dart';
export 'chat_page_model.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({
    super.key,
    String? image,
    required this.userName,
    required this.chatID,
    required this.chatMembers,
  }) : this.image = image ??
            'https://assets.softr-files.com/assets/blocks/v5/mock-images/abstract/03.jpg';

  final String image;
  final String? userName;
  final int? chatID;
  final List<String>? chatMembers;

  static String routeName = 'chatPage';
  static String routePath = '/chatPage';

  @override
  State<ChatPageWidget> createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  late ChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.membersData = await MembersTable().queryRows(
        queryFn: (q) => q.inFilterOrNull(
          'user_id',
          widget.chatMembers,
        ),
      );
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFEA9FB9),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 12.0, 0.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://assets.softr-files.com/assets/blocks/v5/mock-images/abstract/03.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      AccountDetailsCopyWidget.routeName,
                      queryParameters: {
                        'fullName': serializeParam(
                          _model.membersData?.firstOrNull?.fullName,
                          ParamType.String,
                        ),
                        'emailAddress': serializeParam(
                          _model.membersData?.firstOrNull?.email,
                          ParamType.String,
                        ),
                        'companyName': serializeParam(
                          _model.membersData?.firstOrNull?.company,
                          ParamType.String,
                        ),
                        'linkedInProfile': serializeParam(
                          _model.membersData?.firstOrNull?.linkedin,
                          ParamType.String,
                        ),
                        'nationality': serializeParam(
                          _model.membersData?.firstOrNull?.nationality,
                          ParamType.String,
                        ),
                        'location': serializeParam(
                          _model.membersData?.firstOrNull?.location,
                          ParamType.String,
                        ),
                        'date': serializeParam(
                          _model.membersData?.firstOrNull?.dob,
                          ParamType.DateTime,
                        ),
                        'defaultBanner': serializeParam(
                          'https://assets.softr-files.com/assets/blocks/v5/mock-images/abstract/03.jpg',
                          ParamType.String,
                        ),
                        'banner': serializeParam(
                          'https://assets.softr-files.com/assets/blocks/v5/mock-images/abstract/03.jpg',
                          ParamType.String,
                        ),
                        'values': serializeParam(
                          _model.membersData?.firstOrNull?.alignValues,
                          ParamType.String,
                        ),
                        'leadershipPhilosophy': serializeParam(
                          _model.membersData?.firstOrNull?.leadershipPhilosophy,
                          ParamType.String,
                        ),
                        'motivation': serializeParam(
                          _model.membersData?.firstOrNull?.impactGoal,
                          ParamType.String,
                        ),
                        'interests': serializeParam(
                          _model.membersData?.firstOrNull?.interests,
                          ParamType.String,
                        ),
                        'contributions': serializeParam(
                          _model.membersData?.firstOrNull?.contributions,
                          ParamType.String,
                        ),
                        'communityGoals': serializeParam(
                          _model.membersData?.firstOrNull?.communityGoals,
                          ParamType.String,
                        ),
                        'masterclassExpertise': serializeParam(
                          _model.membersData?.firstOrNull?.masterclassExpertise,
                          ParamType.String,
                        ),
                        'experience': serializeParam(
                          _model.membersData?.firstOrNull?.experienceYears,
                          ParamType.int,
                        ),
                        'currentDesignation': serializeParam(
                          _model.membersData?.firstOrNull?.role,
                          ParamType.String,
                        ),
                        'citiesVisited': serializeParam(
                          _model.membersData?.firstOrNull?.citiesVisited,
                          ParamType.String,
                        ),
                        'travelsFrequently': serializeParam(
                          _model.membersData?.firstOrNull?.travelsFrequently,
                          ParamType.String,
                        ),
                        'activeParticipation': serializeParam(
                          _model.membersData?.firstOrNull?.activeParticipation,
                          ParamType.String,
                        ),
                        'mentor': serializeParam(
                          _model.membersData?.firstOrNull?.mentorInvestor,
                          ParamType.String,
                        ),
                        'retreatInterest': serializeParam(
                          _model.membersData?.firstOrNull?.retreatInterest,
                          ParamType.String,
                        ),
                        'founder': serializeParam(
                          _model.membersData?.firstOrNull?.founder,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    valueOrDefault<String>(
                      widget.userName,
                      ' UserName',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.75,
              decoration: BoxDecoration(),
              child: FutureBuilder<List<MessagesRow>>(
                future:
                    (_model.requestCompleter ??= Completer<List<MessagesRow>>()
                          ..complete(MessagesTable().queryRows(
                            queryFn: (q) => q.eqOrNull(
                              'reciepient_id',
                              widget.chatID,
                            ),
                          )))
                        .future,
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<MessagesRow> listViewMessagesRowList = snapshot.data!;

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewMessagesRowList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewMessagesRow =
                          listViewMessagesRowList[listViewIndex];
                      return Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            if (listViewMessagesRow.senderId ==
                                currentUserUid) {
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 300.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.membersData
                                                  ?.where((e) =>
                                                      listViewMessagesRow
                                                          .senderId ==
                                                      e.userId)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.fullName,
                                              ' Full Name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              listViewMessagesRow.messageText,
                                              ' Message text',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 1.0),
                                          child: Text(
                                            dateTimeFormat("jms",
                                                listViewMessagesRow.createdAt),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://assets.softr-files.com/assets/blocks/v5/mock-images/abstract/03.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 300.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    _model.membersData
                                                        ?.where((e) =>
                                                            listViewMessagesRow
                                                                .senderId ==
                                                            valueOrDefault<
                                                                String>(
                                                              e.userId,
                                                              'user_id',
                                                            ))
                                                        .toList()
                                                        .firstOrNull
                                                        ?.fullName,
                                                    'Full Name',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    listViewMessagesRow
                                                        .messageText,
                                                    ' Message sent',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      "jms",
                                                      listViewMessagesRow
                                                          .createdAt),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
              ),
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 15.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    Expanded(
                      child: Container(
                        width: 200.0,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Lato',
                                  letterSpacing: 0.0,
                                ),
                            alignLabelWithHint: false,
                            hintText: 'Type your message',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
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
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: 3,
                          minLines: 1,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.textController.text != '') {
                            await MessagesTable().insert({
                              'message_text': _model.textController.text,
                              'sender_id': currentUserUid,
                              'reciepient_id': widget.chatID,
                            });
                            safeSetState(() => _model.requestCompleter = null);
                            await _model.waitForRequestCompleted();
                            safeSetState(() {
                              _model.textController?.clear();
                            });
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text(
                                      'Please type a message before sending'),
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
                        child: Icon(
                          Icons.send,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
