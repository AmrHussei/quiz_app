import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {

  String get resultAssess{
    String _resultText;
    if(totalScore >= 30){
      _resultText = 'you are excellent';
    }else if (totalScore >=20){
      _resultText = 'you are good';
    }else {
      _resultText='you are bad';
    }
    return _resultText;
    
  }

 Function() restartTheApp;
 final int totalScore;

   Result(this.restartTheApp,this.totalScore);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text('Your score is $totalScore $resultAssess',style:  TextStyle(fontSize: 30,
            color : nightMood == true? Colors.black:Colors.white,
            ),
            ),
           TextButton(onPressed: restartTheApp
           , child: const Text('Restart the app',style:   TextStyle(color: Colors.blue, fontSize: 25),))
        ],
      )
      );
  }
}