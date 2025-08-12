import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_app/share_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditDiseaseSelection extends StatefulWidget {
  final Function(String) onselectedNoDisease;
  final Function(int) onscoreNoDisease;
  final Function(String) onselectedDiabetes;
  final Function(int) onscoreDiabetes;
  final Function(String) onselectedHypertension;
  final Function(int) onscoreHypertension;
  final Function(String) onselectedDyslipidemia;
  final Function(int) onscoreDyslipidemia;
  final Function(String) onselectedStroke;
  final Function(int) onscoreStroke;
  final Function(String) onselectedAtrialFibrillation;
  final Function(int) onscoreAtrialFibrillation;
  final Function(String) onselectedOtherDisease;
  final Function(int) onsocreOtherDiseas;
  final int patientId;

  const EditDiseaseSelection(
      {Key? key,
      required this.onselectedNoDisease,
      required this.onscoreNoDisease,
      required this.onselectedDiabetes,
      required this.onscoreDiabetes,
      required this.onselectedHypertension,
      required this.onscoreHypertension,
      required this.onselectedDyslipidemia,
      required this.onscoreDyslipidemia,
      required this.onselectedStroke,
      required this.onscoreStroke,
      required this.onselectedAtrialFibrillation,
      required this.onscoreAtrialFibrillation,
      required this.onselectedOtherDisease,
      required this.onsocreOtherDiseas,
      required this.patientId})
      : super(key: key);

  @override
  _EditDiseaseSelectionState createState() => _EditDiseaseSelectionState();
}

class _EditDiseaseSelectionState extends State<EditDiseaseSelection> {
  TextEditingController otherDiseaseController = TextEditingController();

  String selectedNoDisease = '';
  int scoreNoDisease = -1;

  String selectedDiabetes = '';
  int scoreDiabetes = -1;

  String selectedHypertension = '';
  int scoreHypertension = -1;

  String selectedDyslipidemia = '';
  int scoreDyslipidemia = -1;

  String selectedStroke = '';
  int scoreStroke = -1;

  String selectedAtrialFibrillation = '';
  int scoreAtrialFibrillation = -1;

  String selectedOtherDisease = '';
  int scoreOtherDisease = -1;

  // ignore: unused_field
  Patient? _patient;

  @override
  void initState() {
    super.initState();
    loadPatientData();
  }

  Future<void> loadPatientData() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? patientList = prefs.getStringList('patients') ?? [];

    for (var patientData in patientList) {
      Map<String, dynamic> map = Map.from(json.decode(patientData));
      Patient patient = Patient.fromMap(map);
      if (patient.id == widget.patientId) {
        setState(() {
          _patient = patient;
          selectedNoDisease = patient.selectedNoDisease;
          scoreNoDisease = patient.scoreNoDisease;
          selectedDiabetes = patient.selectedDiabetes;
          scoreDiabetes = patient.scoreDiabetes;
          selectedHypertension = patient.selectedHypertension;
          scoreHypertension = patient.scoreHypertension;
          selectedDyslipidemia = patient.selectedDyslipidemia;
          scoreDyslipidemia = patient.scoreDyslipidemia;
          selectedStroke = patient.selectedStroke;
          scoreStroke = patient.scoreStroke;
          selectedAtrialFibrillation = patient.selectedAtrialFibrillation;
          scoreAtrialFibrillation = patient.scoreAtrialFibrillation;
          selectedOtherDisease = patient.selectedOtherDisease;
          scoreOtherDisease = patient.socreOtherDiseas;
          otherDiseaseController =
              TextEditingController(text: patient.selectedOtherDisease);
        });
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: CheckboxListTile(
            title: Text(
              'ไม่มีโรคประจำตัว\n(No Underlying Disease)',
              style: TextStyle(fontSize: height * 0.018),
            ),
            value: selectedNoDisease.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                selectedNoDisease = value! ? 'ไม่มีโรคประจำตัว' : '';
                scoreNoDisease = value ? 1 : -1;
              });
              updateSelectedDiseases();
            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Card(
          child: CheckboxListTile(
            title: Text(
              'โรคเบาหวาน\n(Diabetes Mellitus)',
              style: TextStyle(fontSize: height * 0.018),
            ),
            value: selectedDiabetes.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                selectedDiabetes = value! ? 'โรคเบาหวาน' : '';
                scoreDiabetes = value ? 1 : -1;
                // otherDiseaseController.clear();
              });
              updateSelectedDiseases();
            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Card(
          child: CheckboxListTile(
            title: Text(
              'โรคความดันโลหิตสูง\n(Hypertension)',
              style: TextStyle(fontSize: height * 0.018),
            ),
            value: selectedHypertension.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                selectedHypertension = value! ? 'โรคความดันโลหิตสูง' : '';
                scoreHypertension = value ? 1 : -1;
                // otherDiseaseController.clear();
              });
              updateSelectedDiseases();
            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Card(
          child: CheckboxListTile(
            title: Text(
              'โรคไขมันในเลือดสูง\n(Dyslipidemia)',
              style: TextStyle(fontSize: height * 0.018),
            ),
            value: selectedDyslipidemia.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                selectedDyslipidemia = value! ? 'โรคไขมันในเลือดสูง' : '';
                scoreDyslipidemia = value ? 1 : -1;
                // otherDiseaseController.clear();
              });
              updateSelectedDiseases();
            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Card(
          child: CheckboxListTile(
            title: Text(
              'โรคหลอดเลือดสมอง\n(Stroke)',
              style: TextStyle(fontSize: height * 0.018),
            ),
            value: selectedStroke.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                selectedStroke = value! ? 'โรคหลอดเลือดสมอง' : '';
                scoreStroke = value ? 1 : -1;
                // otherDiseaseController.clear();
              });
              updateSelectedDiseases();
            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Card(
          child: CheckboxListTile(
            title: Text(
              'โรคหัวใจเต้นพลิ้ว\n(Atrial Fibrillation/Atrial Flutter)',
              style: TextStyle(fontSize: height * 0.017),
            ),
            value: selectedAtrialFibrillation.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                selectedAtrialFibrillation = value! ? 'โรคหัวใจเต้นพลิ้ว' : '';
                scoreAtrialFibrillation = value ? 1 : -1;
                // otherDiseaseController.clear();
              });
              updateSelectedDiseases();
            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Card(
          child: CheckboxListTile(
            title: Text(
              'อื่นๆ',
              style: TextStyle(fontSize: height * 0.018),
            ),
            value: selectedOtherDisease.isNotEmpty,
            activeColor: Color(0xFF304FFE),
            onChanged: (value) {
              setState(() {
                if (!value!) {
                  selectedOtherDisease = '';
                  scoreOtherDisease = -1;
                  otherDiseaseController.clear();
                } else {
                  selectedOtherDisease = otherDiseaseController.text.isNotEmpty
                      ? otherDiseaseController.text
                      : 'อื่นๆ';
                  scoreOtherDisease = 1;
                }
              });
              updateSelectedDiseases();
            },
          ),
        ),
        if (selectedOtherDisease.isNotEmpty ||
            otherDiseaseController.text.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: otherDiseaseController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'โปรดระบุโรค',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xFF304FFE)),
                ),
                labelStyle: TextStyle(color: Colors.grey),
              ),
              onChanged: (String text) {
                setState(() {
                  selectedOtherDisease = text;
                });
                updateSelectedDiseases();
              },
            ),
          ),
        SizedBox(height: height * 0.02),
      ],
    );
  }

  void updateSelectedDiseases() {
    widget.onselectedNoDisease(
        selectedNoDisease); // Default to empty string if null
    widget.onscoreNoDisease(scoreNoDisease);
    widget.onselectedDiabetes(selectedDiabetes);
    widget.onscoreDiabetes(scoreDiabetes);
    widget.onselectedHypertension(selectedHypertension);
    widget.onscoreHypertension(scoreHypertension);
    widget.onselectedDyslipidemia(selectedDyslipidemia);
    widget.onscoreDyslipidemia(scoreDyslipidemia);
    widget.onselectedStroke(selectedStroke);
    widget.onscoreStroke(scoreStroke);
    widget.onselectedAtrialFibrillation(selectedAtrialFibrillation);
    widget.onscoreAtrialFibrillation(scoreAtrialFibrillation);
    widget.onselectedOtherDisease(selectedOtherDisease);
    widget.onsocreOtherDiseas(scoreOtherDisease);
  }
}
