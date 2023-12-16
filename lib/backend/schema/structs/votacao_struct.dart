// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VotacaoStruct extends FFFirebaseStruct {
  VotacaoStruct({
    String? pretendeVotarEspontanea,
    String? pretendeVotarEstimulada,
    String? naoVotaria,
    String? achaQVaiVencer,
    String? votoVereador,
    String? emQuemVotaria,
    String? votoMudar,
    String? localidade,
    String? agenteDePesquisa,
    String? emQuemVotaria2,
    String? eleitor,
    String? popularidade,
    String? emailEleitor,
    String? telefoneEleitor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pretendeVotarEspontanea = pretendeVotarEspontanea,
        _pretendeVotarEstimulada = pretendeVotarEstimulada,
        _naoVotaria = naoVotaria,
        _achaQVaiVencer = achaQVaiVencer,
        _votoVereador = votoVereador,
        _emQuemVotaria = emQuemVotaria,
        _votoMudar = votoMudar,
        _localidade = localidade,
        _agenteDePesquisa = agenteDePesquisa,
        _emQuemVotaria2 = emQuemVotaria2,
        _eleitor = eleitor,
        _popularidade = popularidade,
        _emailEleitor = emailEleitor,
        _telefoneEleitor = telefoneEleitor,
        super(firestoreUtilData);

  // "pretendeVotarEspontanea" field.
  String? _pretendeVotarEspontanea;
  String get pretendeVotarEspontanea => _pretendeVotarEspontanea ?? '';
  set pretendeVotarEspontanea(String? val) => _pretendeVotarEspontanea = val;
  bool hasPretendeVotarEspontanea() => _pretendeVotarEspontanea != null;

  // "pretendeVotarEstimulada" field.
  String? _pretendeVotarEstimulada;
  String get pretendeVotarEstimulada => _pretendeVotarEstimulada ?? '';
  set pretendeVotarEstimulada(String? val) => _pretendeVotarEstimulada = val;
  bool hasPretendeVotarEstimulada() => _pretendeVotarEstimulada != null;

  // "naoVotaria" field.
  String? _naoVotaria;
  String get naoVotaria => _naoVotaria ?? '';
  set naoVotaria(String? val) => _naoVotaria = val;
  bool hasNaoVotaria() => _naoVotaria != null;

  // "achaQVaiVencer" field.
  String? _achaQVaiVencer;
  String get achaQVaiVencer => _achaQVaiVencer ?? '';
  set achaQVaiVencer(String? val) => _achaQVaiVencer = val;
  bool hasAchaQVaiVencer() => _achaQVaiVencer != null;

  // "votoVereador" field.
  String? _votoVereador;
  String get votoVereador => _votoVereador ?? '';
  set votoVereador(String? val) => _votoVereador = val;
  bool hasVotoVereador() => _votoVereador != null;

  // "emQuemVotaria" field.
  String? _emQuemVotaria;
  String get emQuemVotaria => _emQuemVotaria ?? '';
  set emQuemVotaria(String? val) => _emQuemVotaria = val;
  bool hasEmQuemVotaria() => _emQuemVotaria != null;

  // "votoMudar" field.
  String? _votoMudar;
  String get votoMudar => _votoMudar ?? '';
  set votoMudar(String? val) => _votoMudar = val;
  bool hasVotoMudar() => _votoMudar != null;

  // "localidade" field.
  String? _localidade;
  String get localidade => _localidade ?? '';
  set localidade(String? val) => _localidade = val;
  bool hasLocalidade() => _localidade != null;

  // "agenteDePesquisa" field.
  String? _agenteDePesquisa;
  String get agenteDePesquisa => _agenteDePesquisa ?? '';
  set agenteDePesquisa(String? val) => _agenteDePesquisa = val;
  bool hasAgenteDePesquisa() => _agenteDePesquisa != null;

  // "emQuemVotaria2" field.
  String? _emQuemVotaria2;
  String get emQuemVotaria2 => _emQuemVotaria2 ?? '';
  set emQuemVotaria2(String? val) => _emQuemVotaria2 = val;
  bool hasEmQuemVotaria2() => _emQuemVotaria2 != null;

  // "eleitor" field.
  String? _eleitor;
  String get eleitor => _eleitor ?? '';
  set eleitor(String? val) => _eleitor = val;
  bool hasEleitor() => _eleitor != null;

  // "popularidade" field.
  String? _popularidade;
  String get popularidade => _popularidade ?? '';
  set popularidade(String? val) => _popularidade = val;
  bool hasPopularidade() => _popularidade != null;

  // "emailEleitor" field.
  String? _emailEleitor;
  String get emailEleitor => _emailEleitor ?? '';
  set emailEleitor(String? val) => _emailEleitor = val;
  bool hasEmailEleitor() => _emailEleitor != null;

  // "telefoneEleitor" field.
  String? _telefoneEleitor;
  String get telefoneEleitor => _telefoneEleitor ?? '';
  set telefoneEleitor(String? val) => _telefoneEleitor = val;
  bool hasTelefoneEleitor() => _telefoneEleitor != null;

  static VotacaoStruct fromMap(Map<String, dynamic> data) => VotacaoStruct(
        pretendeVotarEspontanea: data['pretendeVotarEspontanea'] as String?,
        pretendeVotarEstimulada: data['pretendeVotarEstimulada'] as String?,
        naoVotaria: data['naoVotaria'] as String?,
        achaQVaiVencer: data['achaQVaiVencer'] as String?,
        votoVereador: data['votoVereador'] as String?,
        emQuemVotaria: data['emQuemVotaria'] as String?,
        votoMudar: data['votoMudar'] as String?,
        localidade: data['localidade'] as String?,
        agenteDePesquisa: data['agenteDePesquisa'] as String?,
        emQuemVotaria2: data['emQuemVotaria2'] as String?,
        eleitor: data['eleitor'] as String?,
        popularidade: data['popularidade'] as String?,
        emailEleitor: data['emailEleitor'] as String?,
        telefoneEleitor: data['telefoneEleitor'] as String?,
      );

  static VotacaoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? VotacaoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pretendeVotarEspontanea': _pretendeVotarEspontanea,
        'pretendeVotarEstimulada': _pretendeVotarEstimulada,
        'naoVotaria': _naoVotaria,
        'achaQVaiVencer': _achaQVaiVencer,
        'votoVereador': _votoVereador,
        'emQuemVotaria': _emQuemVotaria,
        'votoMudar': _votoMudar,
        'localidade': _localidade,
        'agenteDePesquisa': _agenteDePesquisa,
        'emQuemVotaria2': _emQuemVotaria2,
        'eleitor': _eleitor,
        'popularidade': _popularidade,
        'emailEleitor': _emailEleitor,
        'telefoneEleitor': _telefoneEleitor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pretendeVotarEspontanea': serializeParam(
          _pretendeVotarEspontanea,
          ParamType.String,
        ),
        'pretendeVotarEstimulada': serializeParam(
          _pretendeVotarEstimulada,
          ParamType.String,
        ),
        'naoVotaria': serializeParam(
          _naoVotaria,
          ParamType.String,
        ),
        'achaQVaiVencer': serializeParam(
          _achaQVaiVencer,
          ParamType.String,
        ),
        'votoVereador': serializeParam(
          _votoVereador,
          ParamType.String,
        ),
        'emQuemVotaria': serializeParam(
          _emQuemVotaria,
          ParamType.String,
        ),
        'votoMudar': serializeParam(
          _votoMudar,
          ParamType.String,
        ),
        'localidade': serializeParam(
          _localidade,
          ParamType.String,
        ),
        'agenteDePesquisa': serializeParam(
          _agenteDePesquisa,
          ParamType.String,
        ),
        'emQuemVotaria2': serializeParam(
          _emQuemVotaria2,
          ParamType.String,
        ),
        'eleitor': serializeParam(
          _eleitor,
          ParamType.String,
        ),
        'popularidade': serializeParam(
          _popularidade,
          ParamType.String,
        ),
        'emailEleitor': serializeParam(
          _emailEleitor,
          ParamType.String,
        ),
        'telefoneEleitor': serializeParam(
          _telefoneEleitor,
          ParamType.String,
        ),
      }.withoutNulls;

  static VotacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VotacaoStruct(
        pretendeVotarEspontanea: deserializeParam(
          data['pretendeVotarEspontanea'],
          ParamType.String,
          false,
        ),
        pretendeVotarEstimulada: deserializeParam(
          data['pretendeVotarEstimulada'],
          ParamType.String,
          false,
        ),
        naoVotaria: deserializeParam(
          data['naoVotaria'],
          ParamType.String,
          false,
        ),
        achaQVaiVencer: deserializeParam(
          data['achaQVaiVencer'],
          ParamType.String,
          false,
        ),
        votoVereador: deserializeParam(
          data['votoVereador'],
          ParamType.String,
          false,
        ),
        emQuemVotaria: deserializeParam(
          data['emQuemVotaria'],
          ParamType.String,
          false,
        ),
        votoMudar: deserializeParam(
          data['votoMudar'],
          ParamType.String,
          false,
        ),
        localidade: deserializeParam(
          data['localidade'],
          ParamType.String,
          false,
        ),
        agenteDePesquisa: deserializeParam(
          data['agenteDePesquisa'],
          ParamType.String,
          false,
        ),
        emQuemVotaria2: deserializeParam(
          data['emQuemVotaria2'],
          ParamType.String,
          false,
        ),
        eleitor: deserializeParam(
          data['eleitor'],
          ParamType.String,
          false,
        ),
        popularidade: deserializeParam(
          data['popularidade'],
          ParamType.String,
          false,
        ),
        emailEleitor: deserializeParam(
          data['emailEleitor'],
          ParamType.String,
          false,
        ),
        telefoneEleitor: deserializeParam(
          data['telefoneEleitor'],
          ParamType.String,
          false,
        ),
      );

  static VotacaoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      VotacaoStruct(
        pretendeVotarEspontanea: convertAlgoliaParam(
          data['pretendeVotarEspontanea'],
          ParamType.String,
          false,
        ),
        pretendeVotarEstimulada: convertAlgoliaParam(
          data['pretendeVotarEstimulada'],
          ParamType.String,
          false,
        ),
        naoVotaria: convertAlgoliaParam(
          data['naoVotaria'],
          ParamType.String,
          false,
        ),
        achaQVaiVencer: convertAlgoliaParam(
          data['achaQVaiVencer'],
          ParamType.String,
          false,
        ),
        votoVereador: convertAlgoliaParam(
          data['votoVereador'],
          ParamType.String,
          false,
        ),
        emQuemVotaria: convertAlgoliaParam(
          data['emQuemVotaria'],
          ParamType.String,
          false,
        ),
        votoMudar: convertAlgoliaParam(
          data['votoMudar'],
          ParamType.String,
          false,
        ),
        localidade: convertAlgoliaParam(
          data['localidade'],
          ParamType.String,
          false,
        ),
        agenteDePesquisa: convertAlgoliaParam(
          data['agenteDePesquisa'],
          ParamType.String,
          false,
        ),
        emQuemVotaria2: convertAlgoliaParam(
          data['emQuemVotaria2'],
          ParamType.String,
          false,
        ),
        eleitor: convertAlgoliaParam(
          data['eleitor'],
          ParamType.String,
          false,
        ),
        popularidade: convertAlgoliaParam(
          data['popularidade'],
          ParamType.String,
          false,
        ),
        emailEleitor: convertAlgoliaParam(
          data['emailEleitor'],
          ParamType.String,
          false,
        ),
        telefoneEleitor: convertAlgoliaParam(
          data['telefoneEleitor'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'VotacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VotacaoStruct &&
        pretendeVotarEspontanea == other.pretendeVotarEspontanea &&
        pretendeVotarEstimulada == other.pretendeVotarEstimulada &&
        naoVotaria == other.naoVotaria &&
        achaQVaiVencer == other.achaQVaiVencer &&
        votoVereador == other.votoVereador &&
        emQuemVotaria == other.emQuemVotaria &&
        votoMudar == other.votoMudar &&
        localidade == other.localidade &&
        agenteDePesquisa == other.agenteDePesquisa &&
        emQuemVotaria2 == other.emQuemVotaria2 &&
        eleitor == other.eleitor &&
        popularidade == other.popularidade &&
        emailEleitor == other.emailEleitor &&
        telefoneEleitor == other.telefoneEleitor;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pretendeVotarEspontanea,
        pretendeVotarEstimulada,
        naoVotaria,
        achaQVaiVencer,
        votoVereador,
        emQuemVotaria,
        votoMudar,
        localidade,
        agenteDePesquisa,
        emQuemVotaria2,
        eleitor,
        popularidade,
        emailEleitor,
        telefoneEleitor
      ]);
}

VotacaoStruct createVotacaoStruct({
  String? pretendeVotarEspontanea,
  String? pretendeVotarEstimulada,
  String? naoVotaria,
  String? achaQVaiVencer,
  String? votoVereador,
  String? emQuemVotaria,
  String? votoMudar,
  String? localidade,
  String? agenteDePesquisa,
  String? emQuemVotaria2,
  String? eleitor,
  String? popularidade,
  String? emailEleitor,
  String? telefoneEleitor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VotacaoStruct(
      pretendeVotarEspontanea: pretendeVotarEspontanea,
      pretendeVotarEstimulada: pretendeVotarEstimulada,
      naoVotaria: naoVotaria,
      achaQVaiVencer: achaQVaiVencer,
      votoVereador: votoVereador,
      emQuemVotaria: emQuemVotaria,
      votoMudar: votoMudar,
      localidade: localidade,
      agenteDePesquisa: agenteDePesquisa,
      emQuemVotaria2: emQuemVotaria2,
      eleitor: eleitor,
      popularidade: popularidade,
      emailEleitor: emailEleitor,
      telefoneEleitor: telefoneEleitor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VotacaoStruct? updateVotacaoStruct(
  VotacaoStruct? votacao, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    votacao
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVotacaoStructData(
  Map<String, dynamic> firestoreData,
  VotacaoStruct? votacao,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (votacao == null) {
    return;
  }
  if (votacao.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && votacao.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final votacaoData = getVotacaoFirestoreData(votacao, forFieldValue);
  final nestedData = votacaoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = votacao.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVotacaoFirestoreData(
  VotacaoStruct? votacao, [
  bool forFieldValue = false,
]) {
  if (votacao == null) {
    return {};
  }
  final firestoreData = mapToFirestore(votacao.toMap());

  // Add any Firestore field values
  votacao.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVotacaoListFirestoreData(
  List<VotacaoStruct>? votacaos,
) =>
    votacaos?.map((e) => getVotacaoFirestoreData(e, true)).toList() ?? [];
