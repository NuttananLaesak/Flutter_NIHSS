import 'package:flutter/material.dart';

class SymptomEye extends StatefulWidget {
  final ValueChanged<int> onChanged;
  final int initialValue2; // เพิ่มค่าเริ่มต้น

  const SymptomEye(
      {Key? key, required this.onChanged, required this.initialValue2})
      : super(key: key);

  @override
  State<SymptomEye> createState() => _SymptomEyeState();
}

class _SymptomEyeState extends State<SymptomEye> {
  late int symptomEye;

  @override
  void initState() {
    super.initState();
    symptomEye = widget.initialValue2; // กำหนดค่าเริ่มต้น
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: height * 0.02),
          Text(
            'Eye : ตาดับทันทีทันใด\nมองเห็นภาพซ้อนเฉียบพลัน',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: height * 0.019),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: symptomEye == 1,
                activeColor: Color(0xFF304FFE),
                onChanged: (value) {
                  setState(() {
                    symptomEye = value! ? 1 : -1;
                    widget.onChanged(symptomEye);
                  });
                },
              ),
              Text(
                'มี',
                style: TextStyle(fontSize: height * 0.018),
              ),
              SizedBox(width: width * 0.04),
              Checkbox(
                value: symptomEye == 0,
                activeColor: Color(0xFF304FFE),
                onChanged: (value) {
                  setState(() {
                    symptomEye = value! ? 0 : -1;
                    widget.onChanged(symptomEye);
                  });
                },
              ),
              Text(
                'ไม่มี',
                style: TextStyle(fontSize: height * 0.018),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
        ],
      ),
    );
  }
}
