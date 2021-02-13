import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'cardfile.dart';
import 'gesturedetector.dart';

class finalpage extends StatelessWidget {
  finalpage({this.bmiresult,this.resulttext,this.interpretation});
  final  String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body :Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child:Text('Your results',style: knumber,),
            )
          ),
          Expanded(
            flex: 5,
            child:cardi(
              colour:kactivcardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiresult.toUpperCase(),style:des),
                  Text(resulttext,style:res),
                  Text(interpretation,style: body,textAlign: TextAlign.center,),
                  bottombutton(buttontitle: 'RE-CALCULATE',
                  onTap: (){
                       Navigator.pop(context);
                  },)
                ],
              ),
            )
          )

        ],
      )
    );
  }
}
