// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SegundoQuadroStruct extends FFFirebaseStruct {
  SegundoQuadroStruct({
    String? emQuemVotaria,
    String? opniaoMudar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _emQuemVotaria = emQuemVotaria,
        _opniaoMudar = opniaoMudar,
        super(firestoreUtilData);

  // "emQuemVotaria" field.
  String? _emQuemVotaria;
  String get emQuemVotaria => _emQuemVotaria ?? '';
  set emQuemVotaria(String? val) => _emQuemVotaria = val;
  bool hasEmQuemVotaria() => _emQuemVotaria != null;

  // "opniaoMudar" field.
  String? _opniaoMudar;
  String get opniaoMudar => _opniaoMudar ?? '';
  set opniaoMudar(String? val) => _opniaoMudar = val;
  bool hasOpniaoMudar() => _opniaoMudar != null;

  static SegundoQuadroStruct fromMap(Map<String, dynamic> data) =>
      SegundoQuadroStruct(
        emQuemVotaria: data['emQuemVotaria'] as String?,
        opniaoMudar: data['opniaoMudar'] as String?,
      );

  static SegundoQuadroStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SegundoQuadroStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'emQuemVotaria': _emQuemVotaria,
        'opniaoMudar': _opniaoMudar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'emQuemVotaria': serializeParam(
          _emQuemVotaria,
          ParamType.String,
        ),
        'opniaoMudar': serializeParam(
          _opniaoMudar,
          ParamType.String,
        ),
      }.withoutNulls;

  static SegundoQuadroStruct fromSerializableMap(Map<String, dynamic> data) =>
      SegundoQuadroStruct(
        emQuemVotaria: deserializeParam(
          data['emQuemVotaria'],
          ParamType.String,
          false,
        ),
        opniaoMudar: deserializeParam(
          data['opniaoMudar'],
          ParamType.String,
          false,
        ),
      );

  static SegundoQuadroStruct fromAlgoliaData(Map<String, dynamic> data) =>
      SegundoQuadroStruct(
        emQuemVotaria: convertAlgoliaParam(
          data['emQuemVotaria'],
          ParamType.String,
          false,
        ),
        opniaoMudar: convertAlgoliaParam(
          data['opniaoMudar'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SegundoQuadroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SegundoQuadroStruct &&
        emQuemVotaria == other.emQuemVotaria &&
        opniaoMudar == other.opniaoMudar;
  }

  @override
  int get hashCode => const ListEquality().hash([emQuemVotaria, opniaoMudar]);
}

SegundoQuadroStruct createSegundoQuadroStruct({
  String? emQuemVotaria,
  String? opniaoMudar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SegundoQuadroStruct(
      emQuemVotaria: emQuemVotaria,
      opniaoMudar: opniaoMudar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SegundoQuadroStruct? updateSegundoQuadroStruct(
  SegundoQuadroStruct? segundoQuadro, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    segundoQuadro
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSegundoQuadroStructData(
  Map<String, dynamic> firestoreData,
  SegundoQuadroStruct? segundoQuadro,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (segundoQuadro == null) {
    return;
  }
  if (segundoQuadro.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && segundoQuadro.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final segundoQuadroData =
      getSegundoQuadroFirestoreData(segundoQuadro, forFieldValue);
  final nestedData =
      segundoQuadroData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = segundoQuadro.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSegundoQuadroFirestoreData(
  SegundoQuadroStruct? segundoQuadro, [
  bool forFieldValue = false,
]) {
  if (segundoQuadro == null) {
    return {};
  }
  final firestoreData = mapToFirestore(segundoQuadro.toMap());

  // Add any Firestore field values
  segundoQuadro.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSegundoQuadroListFirestoreData(
  List<SegundoQuadroStruct>? segundoQuadros,
) =>
    segundoQuadros
        ?.map((e) => getSegundoQuadroFirestoreData(e, true))
        .toList() ??
    [];
