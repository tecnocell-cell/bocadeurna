import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VotacaoRecord extends FirestoreRecord {
  VotacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "votoEspontaneo" field.
  String? _votoEspontaneo;
  String get votoEspontaneo => _votoEspontaneo ?? '';
  bool hasVotoEspontaneo() => _votoEspontaneo != null;

  // "votoEstimulado" field.
  String? _votoEstimulado;
  String get votoEstimulado => _votoEstimulado ?? '';
  bool hasVotoEstimulado() => _votoEstimulado != null;

  // "naoVotaria" field.
  String? _naoVotaria;
  String get naoVotaria => _naoVotaria ?? '';
  bool hasNaoVotaria() => _naoVotaria != null;

  // "achaQVaiVencer" field.
  String? _achaQVaiVencer;
  String get achaQVaiVencer => _achaQVaiVencer ?? '';
  bool hasAchaQVaiVencer() => _achaQVaiVencer != null;

  // "votoVereador" field.
  String? _votoVereador;
  String get votoVereador => _votoVereador ?? '';
  bool hasVotoVereador() => _votoVereador != null;

  // "comparaVoto" field.
  String? _comparaVoto;
  String get comparaVoto => _comparaVoto ?? '';
  bool hasComparaVoto() => _comparaVoto != null;

  // "votoMudar" field.
  String? _votoMudar;
  String get votoMudar => _votoMudar ?? '';
  bool hasVotoMudar() => _votoMudar != null;

  // "localidade" field.
  String? _localidade;
  String get localidade => _localidade ?? '';
  bool hasLocalidade() => _localidade != null;

  // "agenteDePesquisa" field.
  String? _agenteDePesquisa;
  String get agenteDePesquisa => _agenteDePesquisa ?? '';
  bool hasAgenteDePesquisa() => _agenteDePesquisa != null;

  // "comparaVoto2" field.
  String? _comparaVoto2;
  String get comparaVoto2 => _comparaVoto2 ?? '';
  bool hasComparaVoto2() => _comparaVoto2 != null;

  // "eleitor" field.
  String? _eleitor;
  String get eleitor => _eleitor ?? '';
  bool hasEleitor() => _eleitor != null;

  // "popularidade" field.
  String? _popularidade;
  String get popularidade => _popularidade ?? '';
  bool hasPopularidade() => _popularidade != null;

  // "emailEleitor" field.
  String? _emailEleitor;
  String get emailEleitor => _emailEleitor ?? '';
  bool hasEmailEleitor() => _emailEleitor != null;

  // "telefoneEleitor" field.
  String? _telefoneEleitor;
  String get telefoneEleitor => _telefoneEleitor ?? '';
  bool hasTelefoneEleitor() => _telefoneEleitor != null;

  void _initializeFields() {
    _votoEspontaneo = snapshotData['votoEspontaneo'] as String?;
    _votoEstimulado = snapshotData['votoEstimulado'] as String?;
    _naoVotaria = snapshotData['naoVotaria'] as String?;
    _achaQVaiVencer = snapshotData['achaQVaiVencer'] as String?;
    _votoVereador = snapshotData['votoVereador'] as String?;
    _comparaVoto = snapshotData['comparaVoto'] as String?;
    _votoMudar = snapshotData['votoMudar'] as String?;
    _localidade = snapshotData['localidade'] as String?;
    _agenteDePesquisa = snapshotData['agenteDePesquisa'] as String?;
    _comparaVoto2 = snapshotData['comparaVoto2'] as String?;
    _eleitor = snapshotData['eleitor'] as String?;
    _popularidade = snapshotData['popularidade'] as String?;
    _emailEleitor = snapshotData['emailEleitor'] as String?;
    _telefoneEleitor = snapshotData['telefoneEleitor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('votacao');

  static Stream<VotacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VotacaoRecord.fromSnapshot(s));

  static Future<VotacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VotacaoRecord.fromSnapshot(s));

  static VotacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VotacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VotacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VotacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VotacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VotacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVotacaoRecordData({
  String? votoEspontaneo,
  String? votoEstimulado,
  String? naoVotaria,
  String? achaQVaiVencer,
  String? votoVereador,
  String? comparaVoto,
  String? votoMudar,
  String? localidade,
  String? agenteDePesquisa,
  String? comparaVoto2,
  String? eleitor,
  String? popularidade,
  String? emailEleitor,
  String? telefoneEleitor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'votoEspontaneo': votoEspontaneo,
      'votoEstimulado': votoEstimulado,
      'naoVotaria': naoVotaria,
      'achaQVaiVencer': achaQVaiVencer,
      'votoVereador': votoVereador,
      'comparaVoto': comparaVoto,
      'votoMudar': votoMudar,
      'localidade': localidade,
      'agenteDePesquisa': agenteDePesquisa,
      'comparaVoto2': comparaVoto2,
      'eleitor': eleitor,
      'popularidade': popularidade,
      'emailEleitor': emailEleitor,
      'telefoneEleitor': telefoneEleitor,
    }.withoutNulls,
  );

  return firestoreData;
}

class VotacaoRecordDocumentEquality implements Equality<VotacaoRecord> {
  const VotacaoRecordDocumentEquality();

  @override
  bool equals(VotacaoRecord? e1, VotacaoRecord? e2) {
    return e1?.votoEspontaneo == e2?.votoEspontaneo &&
        e1?.votoEstimulado == e2?.votoEstimulado &&
        e1?.naoVotaria == e2?.naoVotaria &&
        e1?.achaQVaiVencer == e2?.achaQVaiVencer &&
        e1?.votoVereador == e2?.votoVereador &&
        e1?.comparaVoto == e2?.comparaVoto &&
        e1?.votoMudar == e2?.votoMudar &&
        e1?.localidade == e2?.localidade &&
        e1?.agenteDePesquisa == e2?.agenteDePesquisa &&
        e1?.comparaVoto2 == e2?.comparaVoto2 &&
        e1?.eleitor == e2?.eleitor &&
        e1?.popularidade == e2?.popularidade &&
        e1?.emailEleitor == e2?.emailEleitor &&
        e1?.telefoneEleitor == e2?.telefoneEleitor;
  }

  @override
  int hash(VotacaoRecord? e) => const ListEquality().hash([
        e?.votoEspontaneo,
        e?.votoEstimulado,
        e?.naoVotaria,
        e?.achaQVaiVencer,
        e?.votoVereador,
        e?.comparaVoto,
        e?.votoMudar,
        e?.localidade,
        e?.agenteDePesquisa,
        e?.comparaVoto2,
        e?.eleitor,
        e?.popularidade,
        e?.emailEleitor,
        e?.telefoneEleitor
      ]);

  @override
  bool isValidKey(Object? o) => o is VotacaoRecord;
}
