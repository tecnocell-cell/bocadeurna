// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidatosPrefeitoStruct extends FFFirebaseStruct {
  CandidatosPrefeitoStruct({
    String? nome,
    int? idade,
    String? foto,
    String? partido,
    String? preteCargo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _idade = idade,
        _foto = foto,
        _partido = partido,
        _preteCargo = preteCargo,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  set idade(int? val) => _idade = val;
  void incrementIdade(int amount) => _idade = idade + amount;
  bool hasIdade() => _idade != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;
  bool hasFoto() => _foto != null;

  // "partido" field.
  String? _partido;
  String get partido => _partido ?? '';
  set partido(String? val) => _partido = val;
  bool hasPartido() => _partido != null;

  // "preteCargo" field.
  String? _preteCargo;
  String get preteCargo => _preteCargo ?? '';
  set preteCargo(String? val) => _preteCargo = val;
  bool hasPreteCargo() => _preteCargo != null;

  static CandidatosPrefeitoStruct fromMap(Map<String, dynamic> data) =>
      CandidatosPrefeitoStruct(
        nome: data['nome'] as String?,
        idade: castToType<int>(data['idade']),
        foto: data['foto'] as String?,
        partido: data['partido'] as String?,
        preteCargo: data['preteCargo'] as String?,
      );

  static CandidatosPrefeitoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? CandidatosPrefeitoStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'idade': _idade,
        'foto': _foto,
        'partido': _partido,
        'preteCargo': _preteCargo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'idade': serializeParam(
          _idade,
          ParamType.int,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'partido': serializeParam(
          _partido,
          ParamType.String,
        ),
        'preteCargo': serializeParam(
          _preteCargo,
          ParamType.String,
        ),
      }.withoutNulls;

  static CandidatosPrefeitoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CandidatosPrefeitoStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        idade: deserializeParam(
          data['idade'],
          ParamType.int,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        partido: deserializeParam(
          data['partido'],
          ParamType.String,
          false,
        ),
        preteCargo: deserializeParam(
          data['preteCargo'],
          ParamType.String,
          false,
        ),
      );

  static CandidatosPrefeitoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      CandidatosPrefeitoStruct(
        nome: convertAlgoliaParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        idade: convertAlgoliaParam(
          data['idade'],
          ParamType.int,
          false,
        ),
        foto: convertAlgoliaParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        partido: convertAlgoliaParam(
          data['partido'],
          ParamType.String,
          false,
        ),
        preteCargo: convertAlgoliaParam(
          data['preteCargo'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'CandidatosPrefeitoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CandidatosPrefeitoStruct &&
        nome == other.nome &&
        idade == other.idade &&
        foto == other.foto &&
        partido == other.partido &&
        preteCargo == other.preteCargo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, idade, foto, partido, preteCargo]);
}

CandidatosPrefeitoStruct createCandidatosPrefeitoStruct({
  String? nome,
  int? idade,
  String? foto,
  String? partido,
  String? preteCargo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CandidatosPrefeitoStruct(
      nome: nome,
      idade: idade,
      foto: foto,
      partido: partido,
      preteCargo: preteCargo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CandidatosPrefeitoStruct? updateCandidatosPrefeitoStruct(
  CandidatosPrefeitoStruct? candidatosPrefeito, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    candidatosPrefeito
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCandidatosPrefeitoStructData(
  Map<String, dynamic> firestoreData,
  CandidatosPrefeitoStruct? candidatosPrefeito,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (candidatosPrefeito == null) {
    return;
  }
  if (candidatosPrefeito.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && candidatosPrefeito.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final candidatosPrefeitoData =
      getCandidatosPrefeitoFirestoreData(candidatosPrefeito, forFieldValue);
  final nestedData =
      candidatosPrefeitoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      candidatosPrefeito.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCandidatosPrefeitoFirestoreData(
  CandidatosPrefeitoStruct? candidatosPrefeito, [
  bool forFieldValue = false,
]) {
  if (candidatosPrefeito == null) {
    return {};
  }
  final firestoreData = mapToFirestore(candidatosPrefeito.toMap());

  // Add any Firestore field values
  candidatosPrefeito.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCandidatosPrefeitoListFirestoreData(
  List<CandidatosPrefeitoStruct>? candidatosPrefeitos,
) =>
    candidatosPrefeitos
        ?.map((e) => getCandidatosPrefeitoFirestoreData(e, true))
        .toList() ??
    [];
