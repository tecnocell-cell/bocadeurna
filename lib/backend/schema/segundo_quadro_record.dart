import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SegundoQuadroRecord extends FirestoreRecord {
  SegundoQuadroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emQuemVota" field.
  String? _emQuemVota;
  String get emQuemVota => _emQuemVota ?? '';
  bool hasEmQuemVota() => _emQuemVota != null;

  // "opniaoMudar" field.
  String? _opniaoMudar;
  String get opniaoMudar => _opniaoMudar ?? '';
  bool hasOpniaoMudar() => _opniaoMudar != null;

  void _initializeFields() {
    _emQuemVota = snapshotData['emQuemVota'] as String?;
    _opniaoMudar = snapshotData['opniaoMudar'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('segundoQuadro');

  static Stream<SegundoQuadroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SegundoQuadroRecord.fromSnapshot(s));

  static Future<SegundoQuadroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SegundoQuadroRecord.fromSnapshot(s));

  static SegundoQuadroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SegundoQuadroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SegundoQuadroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SegundoQuadroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SegundoQuadroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SegundoQuadroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSegundoQuadroRecordData({
  String? emQuemVota,
  String? opniaoMudar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emQuemVota': emQuemVota,
      'opniaoMudar': opniaoMudar,
    }.withoutNulls,
  );

  return firestoreData;
}

class SegundoQuadroRecordDocumentEquality
    implements Equality<SegundoQuadroRecord> {
  const SegundoQuadroRecordDocumentEquality();

  @override
  bool equals(SegundoQuadroRecord? e1, SegundoQuadroRecord? e2) {
    return e1?.emQuemVota == e2?.emQuemVota &&
        e1?.opniaoMudar == e2?.opniaoMudar;
  }

  @override
  int hash(SegundoQuadroRecord? e) =>
      const ListEquality().hash([e?.emQuemVota, e?.opniaoMudar]);

  @override
  bool isValidKey(Object? o) => o is SegundoQuadroRecord;
}
