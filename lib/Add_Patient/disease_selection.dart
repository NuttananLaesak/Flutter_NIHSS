import 'package:flutter/material.dart';

class DiseaseSelection extends StatefulWidget {
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

  final int initialValue1;
  final int initialValue2;
  final int initialValue3;
  final int initialValue4;
  final int initialValue5;
  final int initialValue6;
  final int initialValue7;
  final String initialString1;
  final String initialString2;
  final String initialString3;
  final String initialString4;
  final String initialString5;
  final String initialString6;
  final String initialString7;

  const DiseaseSelection({
    Key? key,
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
    required this.initialValue1,
    required this.initialValue2,
    required this.initialValue3,
    required this.initialValue4,
    required this.initialValue5,
    required this.initialValue6,
    required this.initialValue7,
    required this.initialString1,
    required this.initialString2,
    required this.initialString3,
    required this.initialString4,
    required this.initialString5,
    required this.initialString6,
    required this.initialString7,
  }) : super(key: key);

  @override
  _DiseaseSelectionState createState() => _DiseaseSelectionState();
}

class _DiseaseSelectionState extends State<DiseaseSelection> {
  TextEditingController otherDiseaseController = TextEditingController();

  // สร้างตัวแปรเก็บสถานะของโรคที่เลือก
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

  @override
  void initState() {
    super.initState();
    // กำหนดค่าเริ่มต้นจาก widget ที่ถูกส่งเข้ามา
    selectedNoDisease = widget.initialString1;
    scoreNoDisease = widget.initialValue1;

    selectedDiabetes = widget.initialString2;
    scoreDiabetes = widget.initialValue2;

    selectedHypertension = widget.initialString3;
    scoreHypertension = widget.initialValue3;

    selectedDyslipidemia = widget.initialString4;
    scoreDyslipidemia = widget.initialValue4;

    selectedStroke = widget.initialString5;
    scoreStroke = widget.initialValue5;

    selectedAtrialFibrillation = widget.initialString6;
    scoreAtrialFibrillation = widget.initialValue6;

    selectedOtherDisease = widget.initialString7;
    scoreOtherDisease = widget.initialValue7;
    otherDiseaseController = TextEditingController(text: widget.initialString7);
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
                // otherDiseaseController.clear(); // ล้างค่าในฟิลด์อื่นๆ
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
    widget.onselectedNoDisease(selectedNoDisease);
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
