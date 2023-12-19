import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'sincronizar_model.dart';
export 'sincronizar_model.dart';

class SincronizarWidget extends StatefulWidget {
  const SincronizarWidget({Key? key}) : super(key: key);

  @override
  _SincronizarWidgetState createState() => _SincronizarWidgetState();
}

class _SincronizarWidgetState extends State<SincronizarWidget> {
  late SincronizarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SincronizarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 4000));
      while (FFAppState().votacao.length != 0) {
        await EleitoresRecord.collection.doc().set(createEleitoresRecordData(
              nome: FFAppState().socioEconoico[0].nome,
              sexo: FFAppState().socioEconoico[0].sexo,
              idade: FFAppState().socioEconoico[0].idade,
              escolaridade: FFAppState().socioEconoico[0].esolaridade,
              rendafamiliar: FFAppState().socioEconoico[0].rendaFamiliar,
              localVotacao: FFAppState().socioEconoico[0].localVotacao,
              email: FFAppState().socioEconoico[0].email,
              telefone: FFAppState().socioEconoico[0].telefone,
            ));
        // deletaSocioEconomico
        setState(() {
          FFAppState().removeAtIndexFromSocioEconoico(0);
        });

        await PopularidadeRecord.collection
            .doc()
            .set(createPopularidadeRecordData(
              satisfacao: FFAppState().popularidade[0].satisfacao,
              sentimento: FFAppState().popularidade[0].sentimento,
              economia: FFAppState().popularidade[0].economia,
              educacao: FFAppState().popularidade[0].educacao,
              saude: FFAppState().popularidade[0].saude,
              emprego: FFAppState().popularidade[0].emprego,
              moradia: FFAppState().popularidade[0].moradia,
            ));
        // deletaPopularidade
        setState(() {
          FFAppState().removeAtIndexFromPopularidade(0);
        });

        await IntencaoVotoRecord.collection
            .doc()
            .set(createIntencaoVotoRecordData(
              espontanea: FFAppState().intencaoVoto[0].pretendeVotarEspontanea,
              estimulada: FFAppState().intencaoVoto[0].pretendeVotaEstimulada,
              naoVotaria: FFAppState().intencaoVoto[0].naoVotaria,
              acahaQVaiVencer: FFAppState().intencaoVoto[0].achaqVaiVencer,
              votoVereador: FFAppState().intencaoVoto[0].votoVereador,
            ));
        // deletaIntencaoVoto
        setState(() {
          FFAppState().removeAtIndexFromIntencaoVoto(0);
        });

        await VotacaoRecord.collection.doc().set(createVotacaoRecordData(
              eleitor: FFAppState().votacao[0].eleitor,
              popularidade: FFAppState().votacao[0].popularidade,
              votoEspontaneo: FFAppState().votacao[0].pretendeVotarEspontanea,
              votoEstimulado: FFAppState().votacao[0].pretendeVotarEstimulada,
              naoVotaria: FFAppState().votacao[0].naoVotaria,
              achaQVaiVencer: FFAppState().votacao[0].achaQVaiVencer,
              votoVereador: FFAppState().votacao[0].votoVereador,
              comparaVoto: FFAppState().votacao[0].emQuemVotaria,
              votoMudar: FFAppState().votacao[0].votoMudar,
              localidade: FFAppState().votacao[0].localidade,
              agenteDePesquisa: currentUserUid,
              comparaVoto2: FFAppState().votacao[0].emQuemVotaria2,
              emailEleitor: FFAppState().votacao[0].emailEleitor,
              telefoneEleitor: FFAppState().votacao[0].telefoneEleitor,
            ));
        // deletaVotacao
        setState(() {
          FFAppState().removeAtIndexFromVotacao(0);
        });
        if (FFAppState().votacao.length == 0) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Sincronização concluida.',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 400.0,
        height: 373.0,
        decoration: BoxDecoration(
          color: Color(0xFF141414),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie_animations/animation_lmubmmzu.json',
              width: 150.0,
              height: 130.0,
              fit: BoxFit.cover,
              animate: true,
            ),
            Text(
              'Não feche esta tela até \nconcluir a sincronização de dados.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
