import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PopularidadeRecord extends FirestoreRecord {
  PopularidadeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "satisfacao" field.
  String? _satisfacao;
  String get satisfacao => _satisfacao ?? '';
  bool hasSatisfacao() => _satisfacao != null;

  // "sentimento" field.
  String? _sentimento;
  String get sentimento => _sentimento ?? '';
  bool hasSentimento() => _sentimento != null;

  // "economia" field.
  String? _economia;
  String get economia => _economia ?? '';
  bool hasEconomia() => _economia != null;

  // "educacao" field.
  String? _educacao;
  String get educacao => _educacao ?? '';
  bool hasEducacao() => _educacao != null;

  // "saude" field.
  String? _saude;
  String get saude => _saude ?? '';
  bool hasSaude() => _saude != null;

  // "emprego" field.
  String? _emprego;
  String get emprego => _emprego ?? '';
  bool hasEmprego() => _emprego != null;

  // "moradia" field.
  String? _moradia;
  String get moradia => _moradia ?? '';
  bool hasMoradia() => _moradia != null;

  void _initializeFields() {
    _satisfacao = snapshotData['satisfacao'] as String?;
    _sentimento = snapshotData['sentimento'] as String?;
    _economia = snapshotData['economia'] as String?;
    _educacao = snapshotData['educacao'] as String?;
    _saude = snapshotData['saude'] as String?;
    _emprego = snapshotData['emprego'] as String?;
    _moradia = snapshotData['moradia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('popularidade');

  static Stream<PopularidadeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PopularidadeRecord.fromSnapshot(s));

  static Future<PopularidadeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PopularidadeRecord.fromSnapshot(s));

  static PopularidadeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PopularidadeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PopularidadeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PopularidadeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PopularidadeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PopularidadeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPopularidadeRecordData({
  String? satisfacao,
  String? sentimento,
  String? economia,
  String? educacao,
  String? saude,
  String? emprego,
  String? moradia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'satisfacao': satisfacao,
      'sentimento': sentimento,
      'economia': economia,
      'educacao': educacao,
      'saude': saude,
      'emprego': emprego,
      'moradia': moradia,
    }.withoutNulls,
  );

  return firestoreData;
}

class PopularidadeRecordDocumentEquality
    implements Equality<PopularidadeRecord> {
  const PopularidadeRecordDocumentEquality();

  @override
  bool equals(PopularidadeRecord? e1, PopularidadeRecord? e2) {
    return e1?.satisfacao == e2?.satisfacao &&
        e1?.sentimento == e2?.sentimento &&
        e1?.economia == e2?.economia &&
        e1?.educacao == e2?.educacao &&
        e1?.saude == e2?.saude &&
        e1?.emprego == e2?.emprego &&
        e1?.moradia == e2?.moradia;
  }

  @override
  int hash(PopularidadeRecord? e) => const ListEquality().hash([
        e?.satisfacao,
        e?.sentimento,
        e?.economia,
        e?.educacao,
        e?.saude,
        e?.emprego,
        e?.moradia
      ]);

  @override
  bool isValidKey(Object? o) => o is PopularidadeRecord;
}
