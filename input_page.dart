import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results.dart';
import 'package:bmi_calculator/Calculator_brain.dart';

enum CardType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  CardType selectedGender;
  int height = 180;
  int weight = 50;
  int age = 23;

/*
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  //1 male 2 female
  void updateColour(CardType x){
    if(x == CardType.male){
      if(maleCardColour == inactiveCardColour){
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else{
        maleCardColour = inactiveCardColour;
      }
    }
    if(x == CardType.female){
      if(femaleCardColour == inactiveCardColour){
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else{
        femaleCardColour = inactiveCardColour;
      }
    }
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = CardType.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == CardType.male
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        cardChild: IconContent(
                            ikoncan: FontAwesomeIcons.mars, label: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = CardType.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == CardType.female
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        cardChild: IconContent(
                            ikoncan: FontAwesomeIcons.venus, label: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1F1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kHeightTextStyle),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x15EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 140.0,
                        max: 220.0,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kHeightTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  ikon: FontAwesomeIcons.minus,
                                  xd: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                  ikon: FontAwesomeIcons.plus,
                                  xd: () {
                                    setState(() {
                                      weight++;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                      colour: kActiveCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kHeightTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  ikon: FontAwesomeIcons.minus,
                                  xd: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                  ikon: FontAwesomeIcons.plus,
                                  xd: () {
                                    setState(() {
                                      age++;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                      colour: kActiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          )),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: kLargeButtonTextStyle,
                  ),
                ),
                color: kBottomContainerColour,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.ikoncan, this.label});

  final IconData ikoncan;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ikoncan,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.ikon, this.xd});

  final Function xd;
  final IconData ikon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        ikon,
        color: Colors.white,
      ),
      onPressed: xd,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
