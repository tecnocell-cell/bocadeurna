// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VotacaoStruct extends FFFirebaseStruct {
  VotacaoStruct({
    SocioEconomicoStruct? eleitor,
    PopularidadeStruct? popularidade,
    String? pretendeVotarEspontanea,
    String? pretendeVotarEstimulada,
    String? naoVotaria,
    String? achaQVaiVencer,
    String? votoVereador,
    String? emQuemVotaria,
    String? votoMudar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eleitor = eleitor,
        _popularidade = popularidade,
        _pretendeVotarEspontanea = pretendeVotarEspontanea,
        _pretendeVotarEstimulada = pretendeVotarEstimulada,
        _naoVotaria = naoVotaria,
        _achaQVaiVencer = achaQVaiVencer,
        _votoVereador = votoVereador,
        _emQuemVotaria = emQuemVotaria,
        _votoMudar = votoMudar,
        super(firestoreUtilData);

  // "eleitor" field.
  SocioEconomicoStruct? _eleitor;
  SocioEconomicoStruct get eleitor => _eleitor ?? SocioEconomicoStruct();
  set eleitor(SocioEconomicoStruct? val) => _eleitor = val;
  void updateEleitor(Function(SocioEconomicoStruct) updateFn) =>
      updateFn(_eleitor ??= SocioEconomicoStruct());
  bool hasEleitor() => _eleitor != null;

  // "popularidade" field.
  PopularidadeStruct? _popularidade;
  PopularidadeStruct get popularidade => _popularidade ?? PopularidadeStruct();
  set popularidade(PopularidadeStruct? val) => _popularidade = val;
  void updatePopularidade(Function(PopularidadeStruct) updateFn) =>
      updateFn(_popularidade ??= PopularidadeStruct());
  bool hasPopularidade() => _popularidade != null;

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

  static VotacaoStruct fromMap(Map<String, dynamic> data) => VotacaoStruct(
        eleitor: SocioEconomicoStruct.maybeFromMap(data['eleitor']),
        popularidade: PopularidadeStruct.maybeFromMap(data['popularidade']),
        pretendeVotarEspontanea: data['pretendeVotarEspontanea'] as String?,
        pretendeVotarEstimulada: data['pretendeVotarEstimulada'] as String?,
        naoVotaria: data['naoVotaria'] as String?,
        achaQVaiVencer: data['achaQVaiVencer'] as String?,
        votoVereador: data['votoVereador'] as String?,
        emQuemVotaria: data['emQuemVotaria'] as String?,
        votoMudar: data['votoMudar'] as String?,
      );

  static VotacaoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? VotacaoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'eleitor': _eleitor?.toMap(),
        'popularidade': _popularidade?.toMap(),
        'pretendeVotarEspontanea': _pretendeVotarEspontanea,
        'pretendeVotarEstimulada': _pretendeVotarEstimulada,
        'naoVotaria': _naoVotaria,
        'achaQVaiVencer': _achaQVaiVencer,
        'votoVereador': _votoVereador,
        'emQuemVotaria': _emQuemVotaria,
        'votoMudar': _votoMudar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eleitor': serializeParam(
          _eleitor,
          ParamType.DataStruct,
        ),
        'popularidade': serializeParam(
          _popularidade,
          ParamType.DataStruct,
        ),
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
      }.withoutNulls;

  static VotacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VotacaoStruct(
        eleitor: deserializeStructParam(
          data['eleitor'],
          ParamType.DataStruct,
          false,
          structBuilder: SocioEconomicoStruct.fromSerializableMap,
        ),
        popularidade: deserializeStructParam(
          data['popularidade'],
          ParamType.DataStruct,
          false,
          structBuilder: PopularidadeStruct.fromSerializableMap,
        ),
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
      );

  static VotacaoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      VotacaoStruct(
        eleitor: convertAlgoliaParam(
          data['eleitor'],
          ParamType.DataStruct,
          false,
          structBuilder: SocioEconomicoStruct.fromAlgoliaData,
        ),
        popularidade: convertAlgoliaParam(
          data['popularidade'],
          ParamType.DataStruct,
          false,
          structBuilder: PopularidadeStruct.fromAlgoliaData,
        ),
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
        eleitor == other.eleitor &&
        popularidade == other.popularidade &&
        pretendeVotarEspontanea == other.pretendeVotarEspontanea &&
        pretendeVotarEstimulada == other.pretendeVotarEstimulada &&
        naoVotaria == other.naoVotaria &&
        achaQVaiVencer == other.achaQVaiVencer &&
        votoVereador == other.votoVereador &&
        emQuemVotaria == other.emQuemVotaria &&
        votoMudar == other.votoMudar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        eleitor,
        popularidade,
        pretendeVotarEspontanea,
        pretendeVotarEstimulada,
        naoVotaria,
        achaQVaiVencer,
        votoVereador,
        emQuemVotaria,
        votoMudar
      ]);
}

VotacaoStruct createVotacaoStruct({
  SocioEconomicoStruct? eleitor,
  PopularidadeStruct? popularidade,
  String? pretendeVotarEspontanea,
  String? pretendeVotarEstimulada,
  String? naoVotaria,
  String? achaQVaiVencer,
  String? votoVereador,
  String? emQuemVotaria,
  String? votoMudar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VotacaoStruct(
      eleitor: eleitor ?? (clearUnsetFields ? SocioEconomicoStruct() : null),
      popularidade:
          popularidade ?? (clearUnsetFields ? PopularidadeStruct() : null),
      pretendeVotarEspontanea: pretendeVotarEspontanea,
      pretendeVotarEstimulada: pretendeVotarEstimulada,
      naoVotaria: naoVotaria,
      achaQVaiVencer: achaQVaiVencer,
      votoVereador: votoVereador,
      emQuemVotaria: emQuemVotaria,
      votoMudar: votoMudar,
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

  // Handle nested data for "eleitor" field.
  addSocioEconomicoStructData(
    firestoreData,
    votacao.hasEleitor() ? votacao.eleitor : null,
    'eleitor',
    forFieldValue,
  );

  // Handle nested data for "popularidade" field.
  addPopularidadeStructData(
    firestoreData,
    votacao.hasPopularidade() ? votacao.popularidade : null,
    'popularidade',
    forFieldValue,
  );

  // Add any Firestore field values
  votacao.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVotacaoListFirestoreData(
  List<VotacaoStruct>? votacaos,
) =>
    votacaos?.map((e) => getVotacaoFirestoreData(e, true)).toList() ?? [];
