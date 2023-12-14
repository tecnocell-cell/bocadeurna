import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidatosRecord extends FirestoreRecord {
  CandidatosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "partido" field.
  String? _partido;
  String get partido => _partido ?? '';
  bool hasPartido() => _partido != null;

  // "preteCargo" field.
  String? _preteCargo;
  String get preteCargo => _preteCargo ?? '';
  bool hasPreteCargo() => _preteCargo != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _partido = snapshotData['partido'] as String?;
    _preteCargo = snapshotData['preteCargo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidatos');

  static Stream<CandidatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidatosRecord.fromSnapshot(s));

  static Future<CandidatosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidatosRecord.fromSnapshot(s));

  static CandidatosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidatosRecordData({
  String? nome,
  int? idade,
  String? partido,
  String? preteCargo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'idade': idade,
      'partido': partido,
      'preteCargo': preteCargo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidatosRecordDocumentEquality implements Equality<CandidatosRecord> {
  const CandidatosRecordDocumentEquality();

  @override
  bool equals(CandidatosRecord? e1, CandidatosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.idade == e2?.idade &&
        e1?.partido == e2?.partido &&
        e1?.preteCargo == e2?.preteCargo;
  }

  @override
  int hash(CandidatosRecord? e) =>
      const ListEquality().hash([e?.nome, e?.idade, e?.partido, e?.preteCargo]);

  @override
  bool isValidKey(Object? o) => o is CandidatosRecord;
}
