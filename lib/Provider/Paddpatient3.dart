import 'package:flutter/material.dart';

class Paddpatient3 extends ChangeNotifier {
  int? _ctBrainScore;
  String? _ctBrainText;
  String _selectedDiseases = '';
  int _onDiseasesScore = -1;
  String _selectedNoDisease = '';
  int _scoreNoDisease = -1;
  String _selectedDiabetes = '';
  int _scoreDiabetes = -1;
  String _selectedHypertension = '';
  int _scoreHypertension = -1;
  String _selectedDyslipidemia = '';
  int _scoreDyslipidemia = -1;
  String _selectedStroke = '';
  int _scoreStroke = -1;
  String _selectedAtrialFibrillation = '';
  int _scoreAtrialFibrillation = -1;
  String _selectedOtherDisease = '';
  int _socreOtherDiseas = -1;

  int? get ctBrainScore => _ctBrainScore;
  String? get ctBrainText => _ctBrainText;
  String get selectedDiseases => _selectedDiseases;
  int get onDiseasesScore => _onDiseasesScore;
  String get selectedNoDisease => _selectedNoDisease;
  int get scoreNoDisease => _scoreNoDisease;
  String get selectedDiabetes => _selectedDiabetes;
  int get scoreDiabetes => _scoreDiabetes;
  String get selectedHypertension => _selectedHypertension;
  int get scoreHypertension => _scoreHypertension;
  String get selectedDyslipidemia => _selectedDyslipidemia;
  int get scoreDyslipidemia => _scoreDyslipidemia;
  String get selectedStroke => _selectedStroke;
  int get scoreStroke => _scoreStroke;
  String get selectedAtrialFibrillation => _selectedAtrialFibrillation;
  int get scoreAtrialFibrillation => _scoreAtrialFibrillation;
  String get selectedOtherDisease => _selectedOtherDisease;
  int get socreOtherDiseas => _socreOtherDiseas;

  void updateCtBrainScore(int? score, String? text) {
    _ctBrainScore = score;
    _ctBrainText = text;
    notifyListeners();
  }

  void updateSelectedDiseases(
    String newDiseases,
  ) {
    _selectedDiseases = newDiseases;
    notifyListeners();
  }

  void updateOnDiseasesScore(int newScore) {
    _onDiseasesScore = newScore;
    notifyListeners();
  }

  void updateSelectedNoDisease(String newDiseases1) {
    _selectedNoDisease = newDiseases1;
    notifyListeners();
  }

  void updateScoreNoDisease(int newScore1) {
    _scoreNoDisease = newScore1;
    notifyListeners();
  }

  void updateSelectedDiabetes(
    String newDiseases2,
  ) {
    _selectedDiabetes = newDiseases2;
    notifyListeners();
  }

  void updateScoreDiabetes(int newScore2) {
    _scoreDiabetes = newScore2;
    notifyListeners();
  }

  void updateSelectedHypertension(
    String newDiseases3,
  ) {
    _selectedHypertension = newDiseases3;
    notifyListeners();
  }

  void updateScoreHypertension(int newScore3) {
    _scoreHypertension = newScore3;
    notifyListeners();
  }

  void updateSelectedDyslipidemias(
    String newDiseases4,
  ) {
    _selectedDyslipidemia = newDiseases4;
    notifyListeners();
  }

  void updateScoreDyslipidemia(int newScore4) {
    _scoreDyslipidemia = newScore4;
    notifyListeners();
  }

  void updateSelectedStroke(
    String newDiseases5,
  ) {
    _selectedStroke = newDiseases5;
    notifyListeners();
  }

  void updateScoreStroke(int newScore5) {
    _scoreStroke = newScore5;
    notifyListeners();
  }

  void updateSelectedAtrialFibrillation(
    String newDiseases6,
  ) {
    _selectedAtrialFibrillation = newDiseases6;
    notifyListeners();
  }

  void updateScoreAtrialFibrillation(int newScore6) {
    _scoreAtrialFibrillation = newScore6;
    notifyListeners();
  }

  void updateSelectedOtherDisease(
    String newDiseases7,
  ) {
    _selectedOtherDisease = newDiseases7;
    notifyListeners();
  }

  void updateSocreOtherDiseas(int newScore7) {
    _socreOtherDiseas = newScore7;
    notifyListeners();
  }

  void resetCtBrainAndnDiseasesScore() {
    _ctBrainScore = null;
    _ctBrainText = null;
    _selectedDiseases = '';
    _onDiseasesScore = -1;
    _selectedNoDisease = '';
    _scoreNoDisease = -1;
    _selectedDiabetes = '';
    _scoreDiabetes = -1;
    _selectedHypertension = '';
    _scoreHypertension = -1;
    _selectedDyslipidemia = '';
    _scoreDyslipidemia = -1;
    _selectedStroke = '';
    _scoreStroke = -1;
    _selectedAtrialFibrillation = '';
    _scoreAtrialFibrillation = -1;
    _selectedOtherDisease = '';
    _socreOtherDiseas = -1;
    notifyListeners();
  }
}
