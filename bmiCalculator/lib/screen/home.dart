import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/widgets/left_bar.dart';
import 'package:bmi_calculator/widgets/right_bar.dart';
import 'package:flutter/services.dart';

class HomeSreen extends StatefulWidget {
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  String _heightChoosed = "Meter";
  String _weightChoosed = "Kilogram";
  List weightList = ['Kilogram', 'Pound'];
  List heightList = ['Meter', 'Centimeter'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator",
              style: TextStyle(
                  color: accentHexColor, fontWeight: FontWeight.w300)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: mainHexColor,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                  width: 130,
                  child: DropdownButton(
                    style: new TextStyle(color: Colors.white),
                    dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    isExpanded: true,
                    underline: SizedBox(),
                    value: _heightChoosed,
                    onChanged: (newValue) {
                      setState(() {
                        _heightChoosed = newValue;
                      });
                    },
                    items: heightList.map((valueItem) {
                      return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem,
                              style: TextStyle(color: Colors.white)));
                    }).toList(),
                  )),
              Container(
                  width: 130,
                  child: DropdownButton(
                    style: new TextStyle(color: Colors.white),
                    dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    isExpanded: true,
                    underline: SizedBox(),
                    value: _weightChoosed,
                    onChanged: (newValue) {
                      setState(() {
                        _weightChoosed = newValue;
                      });
                    },
                    items: weightList.map((valueItem) {
                      return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem,
                              style: TextStyle(color: Colors.white)));
                    }).toList(),
                  )),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                  width: 130,
                  child: TextField(
                      controller: _heightController,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                      ],
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height',
                          hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8),
                          )))),
              Container(
                  width: 130,
                  child: TextField(
                      controller: _weightController,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                      ],
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Weight',
                          hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8),
                          ))))
            ]),
            SizedBox(height: 30),
            GestureDetector(
                onTap: () {
                  double _h = double.parse(_heightController.text);
                  double _w = double.parse(_weightController.text);
                  String val;
                  //double count = 0;
                  setState(() {
                    if (_heightChoosed == "Centimeter") {
                      _h = _h / 100;
                    }
                    if (_weightChoosed == "Pound") {
                      _w = _w / 2.205;
                    }
                    _bmiResult = _w / (_h * _h);

                    if (_bmiResult > 25 && _bmiResult < 30) {
                      _textResult = "Over Weight";
                    } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                      _textResult = "Normal Weight";
                    } else if (_bmiResult >= 30 && _bmiResult < 100) {
                      _textResult = "Obese";
                    } else if (_bmiResult < 18.5) {
                      _textResult = "UnderWeight";
                    } else {
                      val = _bmiResult.toString();
                      val = val.substring(0, 5);
                      var value = double.parse(val);
                      _bmiResult = value;
                      _textResult = "Invalid Input!";
                    }
                  });
                },
                child: Text('Calculate',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: accentHexColor))),
            SizedBox(height: 50),
            Container(
                child: Text(_bmiResult.toStringAsFixed(2),
                    style: TextStyle(fontSize: 90, color: accentHexColor))),
            SizedBox(height: 30),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                  child: Text(_textResult,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: accentHexColor))),
            ),
            SizedBox(height: 10),
            LeftBar(barWidth: 40),
            SizedBox(height: 20),
            LeftBar(barWidth: 70),
            SizedBox(height: 20),
            LeftBar(barWidth: 40),
            SizedBox(height: 20),
            RightBar(barWidth: 70),
            SizedBox(height: 50),
            RightBar(barWidth: 70)
          ],
        )));
  }
}
