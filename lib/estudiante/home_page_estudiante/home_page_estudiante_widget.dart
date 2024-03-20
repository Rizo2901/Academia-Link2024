import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page_estudiante_model.dart';
export 'home_page_estudiante_model.dart';

class HomePageEstudianteWidget extends StatefulWidget {
  const HomePageEstudianteWidget({super.key});

  @override
  State<HomePageEstudianteWidget> createState() =>
      _HomePageEstudianteWidgetState();
}

class _HomePageEstudianteWidgetState extends State<HomePageEstudianteWidget> {
  late HomePageEstudianteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageEstudianteModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF7C89FF),
                          FlutterFlowTheme.of(context).secondaryBackground
                        ],
                        stops: const [0.0, 1.0],
                        begin: const AlignmentDirectional(0.0, 1.0),
                        end: const AlignmentDirectional(0, -1.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 10.0, 15.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 62.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 0.0,
                                                color: Color(0x33717171),
                                                offset: Offset(0.0, 2.0),
                                                spreadRadius: 0.0,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        7.0, 8.0, 10.0, 3.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/MicrosoftTeams-image__3_-removebg-preview.png',
                                                    width: 92.0,
                                                    height: 200.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 10.0),
                                                child: Icon(
                                                  Icons.menu,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 31.0,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 10.0, 15.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/class.png',
                                                  width: 300.0,
                                                  height: 80.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 10.0, 15.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/notas.jpg',
                                                  width: 300.0,
                                                  height: 80.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Mis Notas',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'PT Sans',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ListaAnuncios');
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 10.0, 15.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/news.png',
                                                    width: 300.0,
                                                    height: 80.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.05,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Anuncios',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'PT Sans',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 10.0, 15.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/students.png',
                                                  width: 300.0,
                                                  height: 80.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 10.0, 15.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/homework.png',
                                                  width: 300.0,
                                                  height: 80.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Tareas',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'PT Sans',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
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
                        ],
                      ),
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100.0,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.home,
                                  color: Color(0xDC1700FF),
                                  size: 24.0,
                                ),
                              ),
                              const Icon(
                                Icons.favorite,
                                color: Color(0xFFFF0004),
                                size: 24.0,
                              ),
                              Icon(
                                Icons.logout,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 25.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.userCog,
                                  color: Colors.black,
                                  size: 24.0,
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
      ),
    );
  }
}
