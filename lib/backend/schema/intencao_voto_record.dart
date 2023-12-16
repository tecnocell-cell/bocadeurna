import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntencaoVotoRecord extends FirestoreRecord {
  IntencaoVotoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "espontanea" field.
  String? _espontanea;
  String get espontanea => _espontanea ?? '';
  bool hasEspontanea() => _espontanea != null;

  // "estimulada" field.
  String? _estimulada;
  String get estimulada => _estimulada ?? '';
  bool hasEstimulada() => _estimulada != null;

  // "naoVotaria" field.
  String? _naoVotaria;
  String get naoVotaria => _naoVotaria ?? '';
  bool hasNaoVotaria() => _naoVotaria != null;

  // "acahaQVaiVencer" field.
  String? _acahaQVaiVencer;
  String get acahaQVaiVencer => _acahaQVaiVencer ?? '';
  bool hasAcahaQVaiVencer() => _acahaQVaiVencer != null;

  // "votoVereador" field.
  String? _votoVereador;
  String get votoVereador => _votoVereador ?? '';
  bool hasVotoVereador() => _votoVereador != null;

  void _initializeFields() {
    _espontanea = snapshotData['espontanea'] as String?;
    _estimulada = snapshotData['estimulada'] as String?;
    _naoVotaria = snapshotData['naoVotaria'] as String?;
    _acahaQVaiVencer = snapshotData['acahaQVaiVencer'] as String?;
    _votoVereador = snapshotData['votoVereador'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('intencaoVoto');

  static Stream<IntencaoVotoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IntencaoVotoRecord.fromSnapshot(s));

  static Future<IntencaoVotoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IntencaoVotoRecord.fromSnapshot(s));

  static IntencaoVotoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IntencaoVotoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IntencaoVotoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IntencaoVotoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IntencaoVotoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IntencaoVotoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIntencaoVotoRecordData({
  String? espontanea,
  String? estimulada,
  String? naoVotaria,
  String? acahaQVaiVencer,
  String? votoVereador,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'espontanea': espontanea,
      'estimulada': estimulada,
      'naoVotaria': naoVotaria,
      'acahaQVaiVencer': acahaQVaiVencer,
      'votoVereador': votoVereador,
    }.withoutNulls,
  );

  return firestoreData;
}

class IntencaoVotoRecordDocumentEquality
    implements Equality<IntencaoVotoRecord> {
  const IntencaoVotoRecordDocumentEquality();

  @override
  bool equals(IntencaoVotoRecord? e1, IntencaoVotoRecord? e2) {
    return e1?.espontanea == e2?.espontanea &&
        e1?.estimulada == e2?.estimulada &&
        e1?.naoVotaria == e2?.naoVotaria &&
        e1?.acahaQVaiVencer == e2?.acahaQVaiVencer &&
        e1?.votoVereador == e2?.votoVereador;
  }

  @override
  int hash(IntencaoVotoRecord? e) => const ListEquality().hash([
        e?.espontanea,
        e?.estimulada,
        e?.naoVotaria,
        e?.acahaQVaiVencer,
        e?.votoVereador
      ]);

  @override
  bool isValidKey(Object? o) => o is IntencaoVotoRecord;
}
