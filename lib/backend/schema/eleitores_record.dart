import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EleitoresRecord extends FirestoreRecord {
  EleitoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "idade" field.
  String? _idade;
  String get idade => _idade ?? '';
  bool hasIdade() => _idade != null;

  // "escolaridade" field.
  String? _escolaridade;
  String get escolaridade => _escolaridade ?? '';
  bool hasEscolaridade() => _escolaridade != null;

  // "rendafamiliar" field.
  String? _rendafamiliar;
  String get rendafamiliar => _rendafamiliar ?? '';
  bool hasRendafamiliar() => _rendafamiliar != null;

  // "localVotacao" field.
  String? _localVotacao;
  String get localVotacao => _localVotacao ?? '';
  bool hasLocalVotacao() => _localVotacao != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _idade = snapshotData['idade'] as String?;
    _escolaridade = snapshotData['escolaridade'] as String?;
    _rendafamiliar = snapshotData['rendafamiliar'] as String?;
    _localVotacao = snapshotData['localVotacao'] as String?;
    _email = snapshotData['email'] as String?;
    _telefone = snapshotData['telefone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eleitores');

  static Stream<EleitoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EleitoresRecord.fromSnapshot(s));

  static Future<EleitoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EleitoresRecord.fromSnapshot(s));

  static EleitoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EleitoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EleitoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EleitoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EleitoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EleitoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEleitoresRecordData({
  String? nome,
  String? sexo,
  String? idade,
  String? escolaridade,
  String? rendafamiliar,
  String? localVotacao,
  String? email,
  String? telefone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'sexo': sexo,
      'idade': idade,
      'escolaridade': escolaridade,
      'rendafamiliar': rendafamiliar,
      'localVotacao': localVotacao,
      'email': email,
      'telefone': telefone,
    }.withoutNulls,
  );

  return firestoreData;
}

class EleitoresRecordDocumentEquality implements Equality<EleitoresRecord> {
  const EleitoresRecordDocumentEquality();

  @override
  bool equals(EleitoresRecord? e1, EleitoresRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.sexo == e2?.sexo &&
        e1?.idade == e2?.idade &&
        e1?.escolaridade == e2?.escolaridade &&
        e1?.rendafamiliar == e2?.rendafamiliar &&
        e1?.localVotacao == e2?.localVotacao &&
        e1?.email == e2?.email &&
        e1?.telefone == e2?.telefone;
  }

  @override
  int hash(EleitoresRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.sexo,
        e?.idade,
        e?.escolaridade,
        e?.rendafamiliar,
        e?.localVotacao,
        e?.email,
        e?.telefone
      ]);

  @override
  bool isValidKey(Object? o) => o is EleitoresRecord;
}
