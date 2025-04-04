import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({super.key});

  static String routeName = 'homePageCopy';
  static String routePath = '/homePageCopy';

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                  child: FutureBuilder<List<MembersRow>>(
                    future: MembersTable().queryRows(
                      queryFn: (q) => q.neqOrNull(
                        'email',
                        currentUserEmail,
                      ),
                    ),
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
                      List<MembersRow> listViewMembersRowList = snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewMembersRowList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 0.0),
                        itemBuilder: (context, listViewIndex) {
                          final listViewMembersRow =
                              listViewMembersRowList[listViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Container(
                              width: 270.0,
                              height: 407.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 12.0, 12.0, 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            listViewMembersRow.defaultBanner,
                                            'https://assets.softr-files.com/assets/blocks/v5/mock-images/abstract/03.jpg',
                                          ),
                                          height: 270.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      listViewMembersRow.fullName,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Lato',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      listViewMembersRow.email,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Lato',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            AccountDetailsCopyWidget.routeName,
                                            queryParameters: {
                                              'fullName': serializeParam(
                                                listViewMembersRow.fullName,
                                                ParamType.String,
                                              ),
                                              'emailAddress': serializeParam(
                                                listViewMembersRow.email,
                                                ParamType.String,
                                              ),
                                              'companyName': serializeParam(
                                                listViewMembersRow.company,
                                                ParamType.String,
                                              ),
                                              'linkedInProfile': serializeParam(
                                                listViewMembersRow.linkedin,
                                                ParamType.String,
                                              ),
                                              'nationality': serializeParam(
                                                listViewMembersRow.nationality,
                                                ParamType.String,
                                              ),
                                              'location': serializeParam(
                                                listViewMembersRow.location,
                                                ParamType.String,
                                              ),
                                              'date': serializeParam(
                                                listViewMembersRow.dob,
                                                ParamType.DateTime,
                                              ),
                                              'defaultBanner': serializeParam(
                                                listViewMembersRow
                                                    .defaultBanner,
                                                ParamType.String,
                                              ),
                                              'banner': serializeParam(
                                                listViewMembersRow
                                                    .defaultBanner,
                                                ParamType.String,
                                              ),
                                              'values': serializeParam(
                                                listViewMembersRow.alignValues,
                                                ParamType.String,
                                              ),
                                              'leadershipPhilosophy':
                                                  serializeParam(
                                                listViewMembersRow
                                                    .leadershipPhilosophy,
                                                ParamType.String,
                                              ),
                                              'motivation': serializeParam(
                                                listViewMembersRow.impactGoal,
                                                ParamType.String,
                                              ),
                                              'interests': serializeParam(
                                                listViewMembersRow.interests,
                                                ParamType.String,
                                              ),
                                              'contributions': serializeParam(
                                                listViewMembersRow
                                                    .contributions,
                                                ParamType.String,
                                              ),
                                              'communityGoals': serializeParam(
                                                listViewMembersRow
                                                    .communityGoals,
                                                ParamType.String,
                                              ),
                                              'masterclassExpertise':
                                                  serializeParam(
                                                listViewMembersRow
                                                    .masterclassExpertise,
                                                ParamType.String,
                                              ),
                                              'experience': serializeParam(
                                                listViewMembersRow
                                                    .experienceYears,
                                                ParamType.int,
                                              ),
                                              'currentDesignation':
                                                  serializeParam(
                                                listViewMembersRow.role,
                                                ParamType.String,
                                              ),
                                              'citiesVisited': serializeParam(
                                                listViewMembersRow
                                                    .citiesVisited,
                                                ParamType.String,
                                              ),
                                              'travelsFrequently':
                                                  serializeParam(
                                                listViewMembersRow
                                                    .travelsFrequently,
                                                ParamType.String,
                                              ),
                                              'activeParticipation':
                                                  serializeParam(
                                                listViewMembersRow
                                                    .activeParticipation,
                                                ParamType.String,
                                              ),
                                              'mentor': serializeParam(
                                                listViewMembersRow
                                                    .mentorInvestor,
                                                ParamType.String,
                                              ),
                                              'retreatInterest': serializeParam(
                                                listViewMembersRow
                                                    .retreatInterest,
                                                ParamType.String,
                                              ),
                                              'founder': serializeParam(
                                                listViewMembersRow.founder,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: 'Get to Know me',
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.5,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFFEA9FB9),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
