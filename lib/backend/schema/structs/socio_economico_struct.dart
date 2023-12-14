// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocioEconomicoStruct extends FFFirebaseStruct {
  SocioEconomicoStruct({
    String? localVotacao,
    String? nome,
    String? sexo,
    String? idade,
    String? esolaridade,
    String? rendaFamiliar,
    String? email,
    String? telefone,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _localVotacao = localVotacao,
        _nome = nome,
        _sexo = sexo,
        _idade = idade,
        _esolaridade = esolaridade,
        _rendaFamiliar = rendaFamiliar,
        _email = email,
        _telefone = telefone,
        super(firestoreUtilData);

  // "localVotacao" field.
  String? _localVotacao;
  String get localVotacao => _localVotacao ?? '';
  set localVotacao(String? val) => _localVotacao = val;
  bool hasLocalVotacao() => _localVotacao != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  set sexo(String? val) => _sexo = val;
  bool hasSexo() => _sexo != null;

  // "idade" field.
  String? _idade;
  String get idade => _idade ?? '';
  set idade(String? val) => _idade = val;
  bool hasIdade() => _idade != null;

  // "esolaridade" field.
  String? _esolaridade;
  String get esolaridade => _esolaridade ?? '';
  set esolaridade(String? val) => _esolaridade = val;
  bool hasEsolaridade() => _esolaridade != null;

  // "rendaFamiliar" field.
  String? _rendaFamiliar;
  String get rendaFamiliar => _rendaFamiliar ?? '';
  set rendaFamiliar(String? val) => _rendaFamiliar = val;
  bool hasRendaFamiliar() => _rendaFamiliar != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;
  bool hasTelefone() => _telefone != null;

  static SocioEconomicoStruct fromMap(Map<String, dynamic> data) =>
      SocioEconomicoStruct(
        localVotacao: data['localVotacao'] as String?,
        nome: data['nome'] as String?,
        sexo: data['sexo'] as String?,
        idade: data['idade'] as String?,
        esolaridade: data['esolaridade'] as String?,
        rendaFamiliar: data['rendaFamiliar'] as String?,
        email: data['email'] as String?,
        telefone: data['telefone'] as String?,
      );

  static SocioEconomicoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SocioEconomicoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'localVotacao': _localVotacao,
        'nome': _nome,
        'sexo': _sexo,
        'idade': _idade,
        'esolaridade': _esolaridade,
        'rendaFamiliar': _rendaFamiliar,
        'email': _email,
        'telefone': _telefone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'localVotacao': serializeParam(
          _localVotacao,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'sexo': serializeParam(
          _sexo,
          ParamType.String,
        ),
        'idade': serializeParam(
          _idade,
          ParamType.String,
        ),
        'esolaridade': serializeParam(
          _esolaridade,
          ParamType.String,
        ),
        'rendaFamiliar': serializeParam(
          _rendaFamiliar,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
      }.withoutNulls;

  static SocioEconomicoStruct fromSerializableMap(Map<String, dynamic> data) =>
      SocioEconomicoStruct(
        localVotacao: deserializeParam(
          data['localVotacao'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        sexo: deserializeParam(
          data['sexo'],
          ParamType.String,
          false,
        ),
        idade: deserializeParam(
          data['idade'],
          ParamType.String,
          false,
        ),
        esolaridade: deserializeParam(
          data['esolaridade'],
          ParamType.String,
          false,
        ),
        rendaFamiliar: deserializeParam(
          data['rendaFamiliar'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
      );

  static SocioEconomicoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      SocioEconomicoStruct(
        localVotacao: convertAlgoliaParam(
          data['localVotacao'],
          ParamType.String,
          false,
        ),
        nome: convertAlgoliaParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        sexo: convertAlgoliaParam(
          data['sexo'],
          ParamType.String,
          false,
        ),
        idade: convertAlgoliaParam(
          data['idade'],
          ParamType.String,
          false,
        ),
        esolaridade: convertAlgoliaParam(
          data['esolaridade'],
          ParamType.String,
          false,
        ),
        rendaFamiliar: convertAlgoliaParam(
          data['rendaFamiliar'],
          ParamType.String,
          false,
        ),
        email: convertAlgoliaParam(
          data['email'],
          ParamType.String,
          false,
        ),
        telefone: convertAlgoliaParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SocioEconomicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SocioEconomicoStruct &&
        localVotacao == other.localVotacao &&
        nome == other.nome &&
        sexo == other.sexo &&
        idade == other.idade &&
        esolaridade == other.esolaridade &&
        rendaFamiliar == other.rendaFamiliar &&
        email == other.email &&
        telefone == other.telefone;
  }

  @override
  int get hashCode => const ListEquality().hash([
        localVotacao,
        nome,
        sexo,
        idade,
        esolaridade,
        rendaFamiliar,
        email,
        telefone
      ]);
}

SocioEconomicoStruct createSocioEconomicoStruct({
  String? localVotacao,
  String? nome,
  String? sexo,
  String? idade,
  String? esolaridade,
  String? rendaFamiliar,
  String? email,
  String? telefone,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SocioEconomicoStruct(
      localVotacao: localVotacao,
      nome: nome,
      sexo: sexo,
      idade: idade,
      esolaridade: esolaridade,
      rendaFamiliar: rendaFamiliar,
      email: email,
      telefone: telefone,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SocioEconomicoStruct? updateSocioEconomicoStruct(
  SocioEconomicoStruct? socioEconomico, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    socioEconomico
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSocioEconomicoStructData(
  Map<String, dynamic> firestoreData,
  SocioEconomicoStruct? socioEconomico,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (socioEconomico == null) {
    return;
  }
  if (socioEconomico.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && socioEconomico.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final socioEconomicoData =
      getSocioEconomicoFirestoreData(socioEconomico, forFieldValue);
  final nestedData =
      socioEconomicoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = socioEconomico.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSocioEconomicoFirestoreData(
  SocioEconomicoStruct? socioEconomico, [
  bool forFieldValue = false,
]) {
  if (socioEconomico == null) {
    return {};
  }
  final firestoreData = mapToFirestore(socioEconomico.toMap());

  // Add any Firestore field values
  socioEconomico.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSocioEconomicoListFirestoreData(
  List<SocioEconomicoStruct>? socioEconomicos,
) =>
    socioEconomicos
        ?.map((e) => getSocioEconomicoFirestoreData(e, true))
        .toList() ??
    [];
