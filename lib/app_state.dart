import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _candidatos = prefs
              .getStringList('ff_candidatos')
              ?.map((x) {
                try {
                  return CandidatosPrefeitoStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _candidatos;
    });
    _safeInit(() {
      _popularidade = prefs
              .getStringList('ff_popularidade')
              ?.map((x) {
                try {
                  return PopularidadeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _popularidade;
    });
    _safeInit(() {
      _intencaoVoto = prefs
              .getStringList('ff_intencaoVoto')
              ?.map((x) {
                try {
                  return IntencaoVotoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _intencaoVoto;
    });
    _safeInit(() {
      _segundoQuadro = prefs
              .getStringList('ff_segundoQuadro')
              ?.map((x) {
                try {
                  return SegundoQuadroStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _segundoQuadro;
    });
    _safeInit(() {
      _socioEconoico = prefs
              .getStringList('ff_socioEconoico')
              ?.map((x) {
                try {
                  return SocioEconomicoStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _socioEconoico;
    });
    _safeInit(() {
      _votacao = prefs
              .getStringList('ff_votacao')
              ?.map((x) {
                try {
                  return VotacaoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _votacao;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CandidatosPrefeitoStruct> _candidatos = [
    CandidatosPrefeitoStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Emivaldo Amâncio\",\"idade\":\"35\",\"foto\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEFIyp7yz7mjK5KaS2QCFdr-dagN9kUvfFqFC0GeXEmvx8dYvgIldNbvqrCaxQbAK8m8o&usqp=CAU\",\"partido\":\"PT\",\"preteCargo\":\"Candidato a Prefeito\"}')),
    CandidatosPrefeitoStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Mussum\",\"idade\":\"60\",\"foto\":\"https://1.bp.blogspot.com/-KrVCaUqMwPo/UOR4NlwcC4I/AAAAAAAAGms/8l0vNA6LX8Y/s1600/Mussum%2Bemocionado.JPG\",\"partido\":\"PMDB\",\"preteCargo\":\"Candidato a Prefeito\"}')),
    CandidatosPrefeitoStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Adriano Salomão\",\"idade\":\"38\",\"foto\":\"data:image/jpeg;base64,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\",\"partido\":\"PSD\",\"preteCargo\":\"Candidato a Prefeito\"}')),
    CandidatosPrefeitoStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Abel Tenório\",\"idade\":\"35\",\"foto\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQync_CLeGwZGoBPs6rLy-qxpPK8K51XlCmT3CIpdi-6ItK5zYfcyAtSsIFUCpnaYEQ5i8&usqp=CAU\",\"partido\":\"PTB\",\"preteCargo\":\"Vereador\"}'))
  ];
  List<CandidatosPrefeitoStruct> get candidatos => _candidatos;
  set candidatos(List<CandidatosPrefeitoStruct> _value) {
    _candidatos = _value;
    prefs.setStringList(
        'ff_candidatos', _value.map((x) => x.serialize()).toList());
  }

  void addToCandidatos(CandidatosPrefeitoStruct _value) {
    _candidatos.add(_value);
    prefs.setStringList(
        'ff_candidatos', _candidatos.map((x) => x.serialize()).toList());
  }

  void removeFromCandidatos(CandidatosPrefeitoStruct _value) {
    _candidatos.remove(_value);
    prefs.setStringList(
        'ff_candidatos', _candidatos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCandidatos(int _index) {
    _candidatos.removeAt(_index);
    prefs.setStringList(
        'ff_candidatos', _candidatos.map((x) => x.serialize()).toList());
  }

  void updateCandidatosAtIndex(
    int _index,
    CandidatosPrefeitoStruct Function(CandidatosPrefeitoStruct) updateFn,
  ) {
    _candidatos[_index] = updateFn(_candidatos[_index]);
    prefs.setStringList(
        'ff_candidatos', _candidatos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCandidatos(int _index, CandidatosPrefeitoStruct _value) {
    _candidatos.insert(_index, _value);
    prefs.setStringList(
        'ff_candidatos', _candidatos.map((x) => x.serialize()).toList());
  }

  List<PopularidadeStruct> _popularidade = [];
  List<PopularidadeStruct> get popularidade => _popularidade;
  set popularidade(List<PopularidadeStruct> _value) {
    _popularidade = _value;
    prefs.setStringList(
        'ff_popularidade', _value.map((x) => x.serialize()).toList());
  }

  void addToPopularidade(PopularidadeStruct _value) {
    _popularidade.add(_value);
    prefs.setStringList(
        'ff_popularidade', _popularidade.map((x) => x.serialize()).toList());
  }

  void removeFromPopularidade(PopularidadeStruct _value) {
    _popularidade.remove(_value);
    prefs.setStringList(
        'ff_popularidade', _popularidade.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPopularidade(int _index) {
    _popularidade.removeAt(_index);
    prefs.setStringList(
        'ff_popularidade', _popularidade.map((x) => x.serialize()).toList());
  }

  void updatePopularidadeAtIndex(
    int _index,
    PopularidadeStruct Function(PopularidadeStruct) updateFn,
  ) {
    _popularidade[_index] = updateFn(_popularidade[_index]);
    prefs.setStringList(
        'ff_popularidade', _popularidade.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPopularidade(int _index, PopularidadeStruct _value) {
    _popularidade.insert(_index, _value);
    prefs.setStringList(
        'ff_popularidade', _popularidade.map((x) => x.serialize()).toList());
  }

  List<IntencaoVotoStruct> _intencaoVoto = [];
  List<IntencaoVotoStruct> get intencaoVoto => _intencaoVoto;
  set intencaoVoto(List<IntencaoVotoStruct> _value) {
    _intencaoVoto = _value;
    prefs.setStringList(
        'ff_intencaoVoto', _value.map((x) => x.serialize()).toList());
  }

  void addToIntencaoVoto(IntencaoVotoStruct _value) {
    _intencaoVoto.add(_value);
    prefs.setStringList(
        'ff_intencaoVoto', _intencaoVoto.map((x) => x.serialize()).toList());
  }

  void removeFromIntencaoVoto(IntencaoVotoStruct _value) {
    _intencaoVoto.remove(_value);
    prefs.setStringList(
        'ff_intencaoVoto', _intencaoVoto.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromIntencaoVoto(int _index) {
    _intencaoVoto.removeAt(_index);
    prefs.setStringList(
        'ff_intencaoVoto', _intencaoVoto.map((x) => x.serialize()).toList());
  }

  void updateIntencaoVotoAtIndex(
    int _index,
    IntencaoVotoStruct Function(IntencaoVotoStruct) updateFn,
  ) {
    _intencaoVoto[_index] = updateFn(_intencaoVoto[_index]);
    prefs.setStringList(
        'ff_intencaoVoto', _intencaoVoto.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInIntencaoVoto(int _index, IntencaoVotoStruct _value) {
    _intencaoVoto.insert(_index, _value);
    prefs.setStringList(
        'ff_intencaoVoto', _intencaoVoto.map((x) => x.serialize()).toList());
  }

  List<SegundoQuadroStruct> _segundoQuadro = [];
  List<SegundoQuadroStruct> get segundoQuadro => _segundoQuadro;
  set segundoQuadro(List<SegundoQuadroStruct> _value) {
    _segundoQuadro = _value;
    prefs.setStringList(
        'ff_segundoQuadro', _value.map((x) => x.serialize()).toList());
  }

  void addToSegundoQuadro(SegundoQuadroStruct _value) {
    _segundoQuadro.add(_value);
    prefs.setStringList(
        'ff_segundoQuadro', _segundoQuadro.map((x) => x.serialize()).toList());
  }

  void removeFromSegundoQuadro(SegundoQuadroStruct _value) {
    _segundoQuadro.remove(_value);
    prefs.setStringList(
        'ff_segundoQuadro', _segundoQuadro.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSegundoQuadro(int _index) {
    _segundoQuadro.removeAt(_index);
    prefs.setStringList(
        'ff_segundoQuadro', _segundoQuadro.map((x) => x.serialize()).toList());
  }

  void updateSegundoQuadroAtIndex(
    int _index,
    SegundoQuadroStruct Function(SegundoQuadroStruct) updateFn,
  ) {
    _segundoQuadro[_index] = updateFn(_segundoQuadro[_index]);
    prefs.setStringList(
        'ff_segundoQuadro', _segundoQuadro.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSegundoQuadro(int _index, SegundoQuadroStruct _value) {
    _segundoQuadro.insert(_index, _value);
    prefs.setStringList(
        'ff_segundoQuadro', _segundoQuadro.map((x) => x.serialize()).toList());
  }

  List<SocioEconomicoStruct> _socioEconoico = [];
  List<SocioEconomicoStruct> get socioEconoico => _socioEconoico;
  set socioEconoico(List<SocioEconomicoStruct> _value) {
    _socioEconoico = _value;
    prefs.setStringList(
        'ff_socioEconoico', _value.map((x) => x.serialize()).toList());
  }

  void addToSocioEconoico(SocioEconomicoStruct _value) {
    _socioEconoico.add(_value);
    prefs.setStringList(
        'ff_socioEconoico', _socioEconoico.map((x) => x.serialize()).toList());
  }

  void removeFromSocioEconoico(SocioEconomicoStruct _value) {
    _socioEconoico.remove(_value);
    prefs.setStringList(
        'ff_socioEconoico', _socioEconoico.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSocioEconoico(int _index) {
    _socioEconoico.removeAt(_index);
    prefs.setStringList(
        'ff_socioEconoico', _socioEconoico.map((x) => x.serialize()).toList());
  }

  void updateSocioEconoicoAtIndex(
    int _index,
    SocioEconomicoStruct Function(SocioEconomicoStruct) updateFn,
  ) {
    _socioEconoico[_index] = updateFn(_socioEconoico[_index]);
    prefs.setStringList(
        'ff_socioEconoico', _socioEconoico.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSocioEconoico(int _index, SocioEconomicoStruct _value) {
    _socioEconoico.insert(_index, _value);
    prefs.setStringList(
        'ff_socioEconoico', _socioEconoico.map((x) => x.serialize()).toList());
  }

  String _satisfacao2 = '';
  String get satisfacao2 => _satisfacao2;
  set satisfacao2(String _value) {
    _satisfacao2 = _value;
  }

  String _satisfacao1 = '';
  String get satisfacao1 => _satisfacao1;
  set satisfacao1(String _value) {
    _satisfacao1 = _value;
  }

  List<VotacaoStruct> _votacao = [];
  List<VotacaoStruct> get votacao => _votacao;
  set votacao(List<VotacaoStruct> _value) {
    _votacao = _value;
    prefs.setStringList(
        'ff_votacao', _value.map((x) => x.serialize()).toList());
  }

  void addToVotacao(VotacaoStruct _value) {
    _votacao.add(_value);
    prefs.setStringList(
        'ff_votacao', _votacao.map((x) => x.serialize()).toList());
  }

  void removeFromVotacao(VotacaoStruct _value) {
    _votacao.remove(_value);
    prefs.setStringList(
        'ff_votacao', _votacao.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromVotacao(int _index) {
    _votacao.removeAt(_index);
    prefs.setStringList(
        'ff_votacao', _votacao.map((x) => x.serialize()).toList());
  }

  void updateVotacaoAtIndex(
    int _index,
    VotacaoStruct Function(VotacaoStruct) updateFn,
  ) {
    _votacao[_index] = updateFn(_votacao[_index]);
    prefs.setStringList(
        'ff_votacao', _votacao.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInVotacao(int _index, VotacaoStruct _value) {
    _votacao.insert(_index, _value);
    prefs.setStringList(
        'ff_votacao', _votacao.map((x) => x.serialize()).toList());
  }

  String _economia = '';
  String get economia => _economia;
  set economia(String _value) {
    _economia = _value;
  }

  String _educacao = '';
  String get educacao => _educacao;
  set educacao(String _value) {
    _educacao = _value;
  }

  String _saude = '';
  String get saude => _saude;
  set saude(String _value) {
    _saude = _value;
  }

  String _moradia = '';
  String get moradia => _moradia;
  set moradia(String _value) {
    _moradia = _value;
  }

  String _emprego = '';
  String get emprego => _emprego;
  set emprego(String _value) {
    _emprego = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
