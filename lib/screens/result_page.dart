import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.interpretation,this.bmiResult,this.resultText,this.BMIrange,this.rangeNumber});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String BMIrange;
  final String rangeNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            child: Center(child: Text('Your Result',style: titleTextStyle,)),
          ),),
          Expanded(flex: 5,
            child: ReusableCard(colour: activeContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText,style: resultTextStyle,),
                  SizedBox(height: 15,),
                  Text(bmiResult,style: BMITextStyle,),
                  Text(BMIrange,style: rangeTextStyle,),
                  Text(rangeNumber,style: bodyTextStyle,),
                  SizedBox(height: 5,),
                  Text(interpretation,style: bodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE YOOUR BMI',
          onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
