// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PopularidadeStruct extends FFFirebaseStruct {
  PopularidadeStruct({
    String? satisfacao,
    String? sentimento,
    String? economia,
    String? educacao,
    String? saude,
    String? emprego,
    String? moradia,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _satisfacao = satisfacao,
        _sentimento = sentimento,
        _economia = economia,
        _educacao = educacao,
        _saude = saude,
        _emprego = emprego,
        _moradia = moradia,
        super(firestoreUtilData);

  // "satisfacao" field.
  String? _satisfacao;
  String get satisfacao => _satisfacao ?? '';
  set satisfacao(String? val) => _satisfacao = val;
  bool hasSatisfacao() => _satisfacao != null;

  // "sentimento" field.
  String? _sentimento;
  String get sentimento => _sentimento ?? '';
  set sentimento(String? val) => _sentimento = val;
  bool hasSentimento() => _sentimento != null;

  // "economia" field.
  String? _economia;
  String get economia => _economia ?? '';
  set economia(String? val) => _economia = val;
  bool hasEconomia() => _economia != null;

  // "educacao" field.
  String? _educacao;
  String get educacao => _educacao ?? '';
  set educacao(String? val) => _educacao = val;
  bool hasEducacao() => _educacao != null;

  // "saude" field.
  String? _saude;
  String get saude => _saude ?? '';
  set saude(String? val) => _saude = val;
  bool hasSaude() => _saude != null;

  // "emprego" field.
  String? _emprego;
  String get emprego => _emprego ?? '';
  set emprego(String? val) => _emprego = val;
  bool hasEmprego() => _emprego != null;

  // "moradia" field.
  String? _moradia;
  String get moradia => _moradia ?? '';
  set moradia(String? val) => _moradia = val;
  bool hasMoradia() => _moradia != null;

  static PopularidadeStruct fromMap(Map<String, dynamic> data) =>
      PopularidadeStruct(
        satisfacao: data['satisfacao'] as String?,
        sentimento: data['sentimento'] as String?,
        economia: data['economia'] as String?,
        educacao: data['educacao'] as String?,
        saude: data['saude'] as String?,
        emprego: data['emprego'] as String?,
        moradia: data['moradia'] as String?,
      );

  static PopularidadeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PopularidadeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'satisfacao': _satisfacao,
        'sentimento': _sentimento,
        'economia': _economia,
        'educacao': _educacao,
        'saude': _saude,
        'emprego': _emprego,
        'moradia': _moradia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'satisfacao': serializeParam(
          _satisfacao,
          ParamType.String,
        ),
        'sentimento': serializeParam(
          _sentimento,
          ParamType.String,
        ),
        'economia': serializeParam(
          _economia,
          ParamType.String,
        ),
        'educacao': serializeParam(
          _educacao,
          ParamType.String,
        ),
        'saude': serializeParam(
          _saude,
          ParamType.String,
        ),
        'emprego': serializeParam(
          _emprego,
          ParamType.String,
        ),
        'moradia': serializeParam(
          _moradia,
          ParamType.String,
        ),
      }.withoutNulls;

  static PopularidadeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PopularidadeStruct(
        satisfacao: deserializeParam(
          data['satisfacao'],
          ParamType.String,
          false,
        ),
        sentimento: deserializeParam(
          data['sentimento'],
          ParamType.String,
          false,
        ),
        economia: deserializeParam(
          data['economia'],
          ParamType.String,
          false,
        ),
        educacao: deserializeParam(
          data['educacao'],
          ParamType.String,
          false,
        ),
        saude: deserializeParam(
          data['saude'],
          ParamType.String,
          false,
        ),
        emprego: deserializeParam(
          data['emprego'],
          ParamType.String,
          false,
        ),
        moradia: deserializeParam(
          data['moradia'],
          ParamType.String,
          false,
        ),
      );

  static PopularidadeStruct fromAlgoliaData(Map<String, dynamic> data) =>
      PopularidadeStruct(
        satisfacao: convertAlgoliaParam(
          data['satisfacao'],
          ParamType.String,
          false,
        ),
        sentimento: convertAlgoliaParam(
          data['sentimento'],
          ParamType.String,
          false,
        ),
        economia: convertAlgoliaParam(
          data['economia'],
          ParamType.String,
          false,
        ),
        educacao: convertAlgoliaParam(
          data['educacao'],
          ParamType.String,
          false,
        ),
        saude: convertAlgoliaParam(
          data['saude'],
          ParamType.String,
          false,
        ),
        emprego: convertAlgoliaParam(
          data['emprego'],
          ParamType.String,
          false,
        ),
        moradia: convertAlgoliaParam(
          data['moradia'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'PopularidadeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PopularidadeStruct &&
        satisfacao == other.satisfacao &&
        sentimento == other.sentimento &&
        economia == other.economia &&
        educacao == other.educacao &&
        saude == other.saude &&
        emprego == other.emprego &&
        moradia == other.moradia;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [satisfacao, sentimento, economia, educacao, saude, emprego, moradia]);
}

PopularidadeStruct createPopularidadeStruct({
  String? satisfacao,
  String? sentimento,
  String? economia,
  String? educacao,
  String? saude,
  String? emprego,
  String? moradia,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PopularidadeStruct(
      satisfacao: satisfacao,
      sentimento: sentimento,
      economia: economia,
      educacao: educacao,
      saude: saude,
      emprego: emprego,
      moradia: moradia,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PopularidadeStruct? updatePopularidadeStruct(
  PopularidadeStruct? popularidade, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    popularidade
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPopularidadeStructData(
  Map<String, dynamic> firestoreData,
  PopularidadeStruct? popularidade,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (popularidade == null) {
    return;
  }
  if (popularidade.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && popularidade.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final popularidadeData =
      getPopularidadeFirestoreData(popularidade, forFieldValue);
  final nestedData =
      popularidadeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = popularidade.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPopularidadeFirestoreData(
  PopularidadeStruct? popularidade, [
  bool forFieldValue = false,
]) {
  if (popularidade == null) {
    return {};
  }
  final firestoreData = mapToFirestore(popularidade.toMap());

  // Add any Firestore field values
  popularidade.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPopularidadeListFirestoreData(
  List<PopularidadeStruct>? popularidades,
) =>
    popularidades?.map((e) => getPopularidadeFirestoreData(e, true)).toList() ??
    [];
