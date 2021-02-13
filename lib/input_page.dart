import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import 'constants.dart';
import 'multiscreen.dart';
import 'cardfile.dart';
import 'gesturedetector.dart';
import 'roundbutton.dart';
import 'calculatorbmi.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

//important enum
enum Gender { male, female }
enum math { inc, dec }

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;
  int weight = 60;
  int age=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: cardi(
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      colour: selectedgender == Gender.male
                          ? kactivcardcolor
                          : kinactivecol,
                      cardchild: Iconcontent(
                        icon: FontAwesomeIcons.mars,
                        name: 'MALE',
                      )),
                ),
                Expanded(
                  child: cardi(
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      colour: selectedgender == Gender.female
                          ? kactivcardcolor
                          : kinactivecol,
                      cardchild: Iconcontent(
                          icon: FontAwesomeIcons.venus, name: 'FEMALE')),
                ),
              ],
            ),
    ),
            Expanded(
              child: cardi(
                colour: kinactivecol,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kx,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: knumber,
                        ),
                        Text(
                          'cm',
                          style: kx,
                        )
                      ],
                    ),
                    // very important new concept cam be used to change our own changes in dialogue box
                    //checkboxes etc
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0xFFEB1555),
                        thumbColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      //important
                      child: Slider(
                        value: height.toDouble(),
                        min: 80.0,
                        max: 220.0,
                        onChanged: (double change) {
                          setState(() {
                            height = change.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: cardi(
                    colour: kinactivecol,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kx,
                        ),
                        Text(
                          weight.toString(),
                          style: knumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: cardi(
                    colour: kinactivecol,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kx,
                        ),
                        Text(
                          age.toString(),
                          style: knumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],),
            ),
            bottombutton(onTap:(){
              calci x=calci(height: height,weight: weight);
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => finalpage(
     resulttext: x.calculateit(), bmiresult: x.getresult(),interpretation: x.sentence(),
    )),
    );
    },buttontitle:'CALCULATE'),
          ],
        ));
  }
}

// made by just clicking on this
//child: Container(
//margin: EdgeInsets.all(15.0),
//decoration: BoxDecoration(
//color: Color(0xFF1D1E33),
//borderRadius: BorderRadius.circular(10.0),
//),
//),
//on container than, we clicked flutter outline than name i.e container than refocter
// then just named a class Card which android studio makes itself.

//      floatingActionButton:Theme(
//        data:ThemeData(accentColor: Colors.purple),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//        ),
//      ),
//for floating action in the right corner of the page.
