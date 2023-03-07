import '/components/navigation_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lineColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).lineColor,
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      constraints: BoxConstraints(
                        maxHeight: 100.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  35.0, 35.0, 35.0, 35.0),
                              child: Image.asset(
                                'assets/images/full_name_logo_black.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.navigationButtonModel1,
                                    updateCallback: () => setState(() {}),
                                    child: NavigationButtonWidget(
                                      title: 'Home',
                                      navigationAction: () async {
                                        context.pushNamed('VideoListPage');
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.navigationButtonModel2,
                                    updateCallback: () => setState(() {}),
                                    child: NavigationButtonWidget(
                                      title: 'Videos',
                                      navigationAction: () async {
                                        context.pushNamed('VideoListPage');
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.navigationButtonModel3,
                                    updateCallback: () => setState(() {}),
                                    child: NavigationButtonWidget(
                                      title: 'Speaking',
                                      navigationAction: () async {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            100.0, 40.0, 40.0, 40.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi, I\'m Pooja Bhaumik. A software engineer, content creator, mentor & public speaker.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 0.0),
                                  child: Text(
                                    'Things that I work on and you probably are interested in:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '• ',
                                          style: TextStyle(),
                                        ),
                                        TextSpan(
                                          text:
                                              'Enroll in my Flutter Essential Training course',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          mouseCursor: SystemMouseCursors.click,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              await launchURL(
                                                  'https://www.linkedin.com/learning/flutter-essential-training-build-for-multiple-platforms');
                                            },
                                        ),
                                        TextSpan(
                                          text:
                                              ' available on Linkedin Learning platform and join other 5000+ learners',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '• Buy the ',
                                          style: TextStyle(),
                                        ),
                                        TextSpan(
                                          text:
                                              'How to Stand Out in Flutter Interviews',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          mouseCursor: SystemMouseCursors.click,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              await launchURL(
                                                  'https://poojabhaumik.gumroad.com/l/PGAFWf');
                                            },
                                        ),
                                        TextSpan(
                                          text:
                                              ' ebook (\$8) and learn what one needs to know as an intern, junior and senior in the mobile development industry focused on Flutter roles',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                      child: Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 25.0, 25.0, 25.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network(
                                  'https://picsum.photos/seed/783/600',
                                  width: 400.0,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Button',
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 25.0, 25.0, 25.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network(
                                  'https://picsum.photos/seed/783/600',
                                  width: 400.0,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Button',
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'See what others are saying',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 30.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Image.asset(
                                          'assets/images/T1-1.png',
                                          width: 400.0,
                                          height: 400.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Image.asset(
                                          'assets/images/T2.png',
                                          width: 400.0,
                                          height: 400.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Image.asset(
                                          'assets/images/T3.png',
                                          width: 400.0,
                                          height: 400.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
