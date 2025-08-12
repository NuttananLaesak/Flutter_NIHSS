import 'package:flutter/material.dart';
import 'package:hospital_app/Add_Patient/ct_brain.dart';
import 'package:provider/provider.dart';
import 'package:hospital_app/Provider/Paddpatient3.dart';
import 'package:hospital_app/Quiz/quiz1_page.dart';
import 'package:hospital_app/Add_Patient/disease_selection.dart';

class AddPatient3 extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController hospitalController;
  final TextEditingController ageController;
  final String gender;
  final TextEditingController weightController;
  final TextEditingController systolicBloodPressureController;
  final TextEditingController diastolicBloodPressureController;
  final TextEditingController sugarController;
  final TextEditingController dateTimeController1;
  final TextEditingController dateTimeController2;
  final TextEditingController dateTimeController3;
  final double? timeDifference1;
  final double? timeDifference2;

  const AddPatient3({
    required this.nameController,
    required this.hospitalController,
    required this.ageController,
    required this.gender,
    required this.weightController,
    required this.systolicBloodPressureController,
    required this.diastolicBloodPressureController,
    required this.sugarController,
    required this.dateTimeController1,
    required this.dateTimeController2,
    required this.dateTimeController3,
    required this.timeDifference1,
    required this.timeDifference2,
  });

  @override
  State<AddPatient3> createState() => _AddPatient3State();
}

class _AddPatient3State extends State<AddPatient3> {
  String selectedDiseases = '';
  int scoreDiseasesScore = -1;
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
  int socreOtherDiseas = -1;

  late String initialctselectedDiseases;
  late int initialonDiseasesScore;
  late int initialonDiseasesScore1;
  late int initialonDiseasesScore2;
  late int initialonDiseasesScore3;
  late int initialonDiseasesScore4;
  late int initialonDiseasesScore5;
  late int initialonDiseasesScore6;
  late int initialonDiseasesScore7;
  late String initialctselectedDiseases1;
  late String initialctselectedDiseases2;
  late String initialctselectedDiseases3;
  late String initialctselectedDiseases4;
  late String initialctselectedDiseases5;
  late String initialctselectedDiseases6;
  late String initialctselectedDiseases7;

  @override
  void initState() {
    super.initState();
    // ดึง paddPatient2 จาก Provider
    final paddPatient3 = Provider.of<Paddpatient3>(context, listen: false);
    // กำหนดค่าครั้งแรกจาก paddPatient2
    initialctselectedDiseases = paddPatient3.selectedDiseases;
    initialonDiseasesScore = paddPatient3.onDiseasesScore;
    initialonDiseasesScore1 = paddPatient3.scoreNoDisease;
    initialonDiseasesScore2 = paddPatient3.scoreDiabetes;
    initialonDiseasesScore3 = paddPatient3.scoreHypertension;
    initialonDiseasesScore4 = paddPatient3.scoreDyslipidemia;
    initialonDiseasesScore5 = paddPatient3.scoreStroke;
    initialonDiseasesScore6 = paddPatient3.scoreAtrialFibrillation;
    initialonDiseasesScore7 = paddPatient3.socreOtherDiseas;
    initialctselectedDiseases1 = paddPatient3.selectedNoDisease;
    initialctselectedDiseases2 = paddPatient3.selectedDiabetes;
    initialctselectedDiseases3 = paddPatient3.selectedHypertension;
    initialctselectedDiseases4 = paddPatient3.selectedDyslipidemia;
    initialctselectedDiseases5 = paddPatient3.selectedStroke;
    initialctselectedDiseases6 = paddPatient3.selectedAtrialFibrillation;
    initialctselectedDiseases7 = paddPatient3.selectedOtherDisease;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final paddPatient3 = Provider.of<Paddpatient3>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: const Color(0xFF82B1FF),
          centerTitle: true,
          title: Text(
            'เพิ่มข้อมูลผู้ป่วย',
            style: TextStyle(
              fontSize: height * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: height * 0.03),
            Center(
              child: SizedBox(
                width: width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 150, 192, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.05),
                    child: Column(
                      children: [
                        Text(
                          "โรคประจำตัว",
                          style: TextStyle(
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        DiseaseSelection(
                          initialValue1: initialonDiseasesScore1,
                          initialValue2: initialonDiseasesScore2,
                          initialValue3: initialonDiseasesScore3,
                          initialValue4: initialonDiseasesScore4,
                          initialValue5: initialonDiseasesScore5,
                          initialValue6: initialonDiseasesScore6,
                          initialValue7: initialonDiseasesScore7,
                          initialString1: initialctselectedDiseases1,
                          initialString2: initialctselectedDiseases2,
                          initialString3: initialctselectedDiseases3,
                          initialString4: initialctselectedDiseases4,
                          initialString5: initialctselectedDiseases5,
                          initialString6: initialctselectedDiseases6,
                          initialString7: initialctselectedDiseases7,
                          onselectedNoDisease: (selectedNoDisease) {
                            paddPatient3
                                .updateSelectedNoDisease(selectedNoDisease);
                          },
                          onscoreNoDisease: (scoreNoDisease) {
                            paddPatient3.updateScoreNoDisease(scoreNoDisease);
                          },
                          onselectedDiabetes: (selectedDiabetes) {
                            paddPatient3
                                .updateSelectedDiabetes(selectedDiabetes);
                          },
                          onscoreDiabetes: (scoreDiabetes) {
                            paddPatient3.updateScoreDiabetes(scoreDiabetes);
                          },
                          onselectedHypertension: (selectedHypertension) {
                            paddPatient3.updateSelectedHypertension(
                                selectedHypertension);
                          },
                          onscoreHypertension: (scoreHypertension) {
                            paddPatient3
                                .updateScoreHypertension(scoreHypertension);
                          },
                          onselectedDyslipidemia: (selectedDyslipidemia) {
                            paddPatient3.updateSelectedDyslipidemias(
                                selectedDyslipidemia);
                          },
                          onscoreDyslipidemia: (scoreDyslipidemia) {
                            paddPatient3
                                .updateScoreDyslipidemia(scoreDyslipidemia);
                          },
                          onselectedStroke: (selectedStroke) {
                            paddPatient3.updateSelectedStroke(selectedStroke);
                          },
                          onscoreStroke: (scoreStroke) {
                            paddPatient3.updateScoreStroke(scoreStroke);
                          },
                          onselectedAtrialFibrillation:
                              (selectedAtrialFibrillation) {
                            paddPatient3.updateSelectedAtrialFibrillation(
                                selectedAtrialFibrillation);
                          },
                          onscoreAtrialFibrillation: (scoreAtrialFibrillation) {
                            paddPatient3.updateScoreAtrialFibrillation(
                                scoreAtrialFibrillation);
                          },
                          onselectedOtherDisease: (selectedOtherDisease) {
                            paddPatient3.updateSelectedOtherDisease(
                                selectedOtherDisease);
                          },
                          onsocreOtherDiseas: (socreOtherDiseas) {
                            paddPatient3
                                .updateSocreOtherDiseas(socreOtherDiseas);
                          },
                        ),
                        SizedBox(height: height * 0.02),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Center(
              child: SizedBox(
                width: width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 150, 192, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.05),
                    child: Column(
                      children: [
                        Text(
                          "เอ็กซเรย์คอมพิวเตอร์สมอง\nCT Brain",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        ctBrainWidget(
                          context: context,
                          ctBrainScore: paddPatient3.ctBrainScore,
                          ctBrainText: paddPatient3.ctBrainText,
                          onChanged: (int? newScore, String? newText) {
                            paddPatient3.updateCtBrainScore(newScore, newText);
                          },
                        ),
                        SizedBox(height: height * 0.02),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question1Page(
                          nameController: widget.nameController,
                          hospitalController: widget.hospitalController,
                          ageController: widget.ageController,
                          gender: widget.gender,
                          weightController: widget.weightController,
                          systolicBloodPressureController:
                              widget.systolicBloodPressureController,
                          diastolicBloodPressureController:
                              widget.diastolicBloodPressureController,
                          sugarController: widget.sugarController,
                          dateTimeController1: widget.dateTimeController1,
                          dateTimeController2: widget.dateTimeController2,
                          dateTimeController3: widget.dateTimeController3,
                          timeDifference1: widget.timeDifference1,
                          timeDifference2: widget.timeDifference2,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF82B1FF)),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(150, 70)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'ประเมินความรุนเเรง NIHSS',
                    style: TextStyle(
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }
}
