// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntencaoVotoStruct extends FFFirebaseStruct {
  IntencaoVotoStruct({
    String? pretendeVotarEspontanea,
    String? pretendeVotaEstimulada,
    String? naoVotaria,
    String? achaqVaiVencer,
    String? votoVereador,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pretendeVotarEspontanea = pretendeVotarEspontanea,
        _pretendeVotaEstimulada = pretendeVotaEstimulada,
        _naoVotaria = naoVotaria,
        _achaqVaiVencer = achaqVaiVencer,
        _votoVereador = votoVereador,
        super(firestoreUtilData);

  // "pretendeVotarEspontanea" field.
  String? _pretendeVotarEspontanea;
  String get pretendeVotarEspontanea => _pretendeVotarEspontanea ?? '';
  set pretendeVotarEspontanea(String? val) => _pretendeVotarEspontanea = val;
  bool hasPretendeVotarEspontanea() => _pretendeVotarEspontanea != null;

  // "pretendeVotaEstimulada" field.
  String? _pretendeVotaEstimulada;
  String get pretendeVotaEstimulada => _pretendeVotaEstimulada ?? '';
  set pretendeVotaEstimulada(String? val) => _pretendeVotaEstimulada = val;
  bool hasPretendeVotaEstimulada() => _pretendeVotaEstimulada != null;

  // "naoVotaria" field.
  String? _naoVotaria;
  String get naoVotaria => _naoVotaria ?? '';
  set naoVotaria(String? val) => _naoVotaria = val;
  bool hasNaoVotaria() => _naoVotaria != null;

  // "achaqVaiVencer" field.
  String? _achaqVaiVencer;
  String get achaqVaiVencer => _achaqVaiVencer ?? '';
  set achaqVaiVencer(String? val) => _achaqVaiVencer = val;
  bool hasAchaqVaiVencer() => _achaqVaiVencer != null;

  // "votoVereador" field.
  String? _votoVereador;
  String get votoVereador => _votoVereador ?? '';
  set votoVereador(String? val) => _votoVereador = val;
  bool hasVotoVereador() => _votoVereador != null;

  static IntencaoVotoStruct fromMap(Map<String, dynamic> data) =>
      IntencaoVotoStruct(
        pretendeVotarEspontanea: data['pretendeVotarEspontanea'] as String?,
        pretendeVotaEstimulada: data['pretendeVotaEstimulada'] as String?,
        naoVotaria: data['naoVotaria'] as String?,
        achaqVaiVencer: data['achaqVaiVencer'] as String?,
        votoVereador: data['votoVereador'] as String?,
      );

  static IntencaoVotoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? IntencaoVotoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pretendeVotarEspontanea': _pretendeVotarEspontanea,
        'pretendeVotaEstimulada': _pretendeVotaEstimulada,
        'naoVotaria': _naoVotaria,
        'achaqVaiVencer': _achaqVaiVencer,
        'votoVereador': _votoVereador,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pretendeVotarEspontanea': serializeParam(
          _pretendeVotarEspontanea,
          ParamType.String,
        ),
        'pretendeVotaEstimulada': serializeParam(
          _pretendeVotaEstimulada,
          ParamType.String,
        ),
        'naoVotaria': serializeParam(
          _naoVotaria,
          ParamType.String,
        ),
        'achaqVaiVencer': serializeParam(
          _achaqVaiVencer,
          ParamType.String,
        ),
        'votoVereador': serializeParam(
          _votoVereador,
          ParamType.String,
        ),
      }.withoutNulls;

  static IntencaoVotoStruct fromSerializableMap(Map<String, dynamic> data) =>
      IntencaoVotoStruct(
        pretendeVotarEspontanea: deserializeParam(
          data['pretendeVotarEspontanea'],
          ParamType.String,
          false,
        ),
        pretendeVotaEstimulada: deserializeParam(
          data['pretendeVotaEstimulada'],
          ParamType.String,
          false,
        ),
        naoVotaria: deserializeParam(
          data['naoVotaria'],
          ParamType.String,
          false,
        ),
        achaqVaiVencer: deserializeParam(
          data['achaqVaiVencer'],
          ParamType.String,
          false,
        ),
        votoVereador: deserializeParam(
          data['votoVereador'],
          ParamType.String,
          false,
        ),
      );

  static IntencaoVotoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      IntencaoVotoStruct(
        pretendeVotarEspontanea: convertAlgoliaParam(
          data['pretendeVotarEspontanea'],
          ParamType.String,
          false,
        ),
        pretendeVotaEstimulada: convertAlgoliaParam(
          data['pretendeVotaEstimulada'],
          ParamType.String,
          false,
        ),
        naoVotaria: convertAlgoliaParam(
          data['naoVotaria'],
          ParamType.String,
          false,
        ),
        achaqVaiVencer: convertAlgoliaParam(
          data['achaqVaiVencer'],
          ParamType.String,
          false,
        ),
        votoVereador: convertAlgoliaParam(
          data['votoVereador'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'IntencaoVotoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IntencaoVotoStruct &&
        pretendeVotarEspontanea == other.pretendeVotarEspontanea &&
        pretendeVotaEstimulada == other.pretendeVotaEstimulada &&
        naoVotaria == other.naoVotaria &&
        achaqVaiVencer == other.achaqVaiVencer &&
        votoVereador == other.votoVereador;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pretendeVotarEspontanea,
        pretendeVotaEstimulada,
        naoVotaria,
        achaqVaiVencer,
        votoVereador
      ]);
}

IntencaoVotoStruct createIntencaoVotoStruct({
  String? pretendeVotarEspontanea,
  String? pretendeVotaEstimulada,
  String? naoVotaria,
  String? achaqVaiVencer,
  String? votoVereador,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IntencaoVotoStruct(
      pretendeVotarEspontanea: pretendeVotarEspontanea,
      pretendeVotaEstimulada: pretendeVotaEstimulada,
      naoVotaria: naoVotaria,
      achaqVaiVencer: achaqVaiVencer,
      votoVereador: votoVereador,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IntencaoVotoStruct? updateIntencaoVotoStruct(
  IntencaoVotoStruct? intencaoVoto, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    intencaoVoto
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIntencaoVotoStructData(
  Map<String, dynamic> firestoreData,
  IntencaoVotoStruct? intencaoVoto,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (intencaoVoto == null) {
    return;
  }
  if (intencaoVoto.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && intencaoVoto.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final intencaoVotoData =
      getIntencaoVotoFirestoreData(intencaoVoto, forFieldValue);
  final nestedData =
      intencaoVotoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = intencaoVoto.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIntencaoVotoFirestoreData(
  IntencaoVotoStruct? intencaoVoto, [
  bool forFieldValue = false,
]) {
  if (intencaoVoto == null) {
    return {};
  }
  final firestoreData = mapToFirestore(intencaoVoto.toMap());

  // Add any Firestore field values
  intencaoVoto.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIntencaoVotoListFirestoreData(
  List<IntencaoVotoStruct>? intencaoVotos,
) =>
    intencaoVotos?.map((e) => getIntencaoVotoFirestoreData(e, true)).toList() ??
    [];
