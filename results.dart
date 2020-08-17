import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Result"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          resultText.toUpperCase(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                         style: kHeight2TextStyle,
                        ),
                        Text(
                          interpretation,
                          style: kResultLittleTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "RE-CALCULATE",
                        style: kLargeButtonTextStyle,
                      ),
                    ),
                    color: kBottomContainerColour,
                    margin: EdgeInsets.only(top: 10.0),
                    width: double.infinity,
                    height: 120.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
