import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'opiniao_mudar_model.dart';
export 'opiniao_mudar_model.dart';

class OpiniaoMudarWidget extends StatefulWidget {
  const OpiniaoMudarWidget({Key? key}) : super(key: key);

  @override
  _OpiniaoMudarWidgetState createState() => _OpiniaoMudarWidgetState();
}

class _OpiniaoMudarWidgetState extends State<OpiniaoMudarWidget> {
  late OpiniaoMudarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpiniaoMudarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
              child: Text(
                'Pesquisa de Intensão',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
              child: Text(
                'Em relaçao a sua Intenção de voto, você diria que até o dia da eleição ela poderia mudar?',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown<String>(
                            controller: _model.opValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              'Ela é definitiva.',
                              'Dificilmente irá mudar.',
                              'Poderá vir a mudar sua intenção de voto.',
                              'Não sabe.'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.opValue = val),
                            width: 359.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Selecione a Opção...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown<String>(
                            controller: _model.localdadeValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              'Casa de Tábua',
                              'Agrovila',
                              'Nova Esperança',
                              'Serra Azul',
                              'Coodespar',
                              'Rio Preto',
                              'Santa Maria'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.localdadeValue = val),
                            width: 359.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Selecione a Localidade...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 7.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          FFAppState().addToIntencaoVoto(IntencaoVotoStruct(
                            pretendeVotarEspontanea: FFAppState().espontanea,
                            pretendeVotaEstimulada: FFAppState().estimulada,
                            naoVotaria: FFAppState().naoVotaria,
                            achaqVaiVencer: FFAppState().achaQVaiVencer,
                            votoVereador: FFAppState().vereador,
                          ));
                        });
                        setState(() {
                          FFAppState().addToVotacao(VotacaoStruct(
                            pretendeVotarEspontanea: FFAppState().espontanea,
                            pretendeVotarEstimulada: FFAppState().estimulada,
                            naoVotaria: FFAppState().naoVotaria,
                            achaQVaiVencer: FFAppState().achaQVaiVencer,
                            votoVereador: FFAppState().vereador,
                            emQuemVotaria: FFAppState().qd2Primeiro,
                            votoMudar: _model.opValue,
                            agenteDePesquisa: currentUserDisplayName,
                            emQuemVotaria2: FFAppState().qd2Segundo,
                            localidade: _model.localdadeValue,
                            eleitor: FFAppState().eleitor,
                            popularidade: FFAppState().satisfacao1,
                            emailEleitor: FFAppState().emailEleitor,
                            telefoneEleitor: FFAppState().telefoneEleitor,
                          ));
                        });

                        context.pushNamed('Onboarding');
                      },
                      text: 'Enviar Pesquisa',
                      options: FFButtonOptions(
                        width: 170.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
