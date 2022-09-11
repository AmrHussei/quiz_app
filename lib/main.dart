import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'result.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

  bool nightMood = true;

class _MyAppState extends State<MyApp> {
  int _indexOfQuestions = 0;
  int totalScore =0;

void restartTheApp(){
  setState(() {
    _indexOfQuestions =0;
    totalScore =0;
  });
}

  void answerFunction(int score){
    totalScore += score;
    
    setState(() {
      _indexOfQuestions++;
    }   
    );
  }
  
   final List<Map<String, Object>> _questions = [
    {
      'questionText':"How many Arab countries ?",
      'answers':[{'text':'25','score':10},
      {'text':'30','score':0},
      {'text':'122','score':0},
      {'text':'74','score':0}]
    },

   {
    'questionText':"The largest country in the world in area ?",
    'answers':[
    {'text':'Russia','score':10},
    {'text':'Canada','score':0},
    {'text':'China','score':0},
    {'text':'United States	','score':0}]
   },

    {
      'questionText':"What Is The Capital Of Egypt ?",
      'answers':[
    {'text':'Cairo','score':10},
    {'text':'Dakahlia','score':0},
    {'text':'Sinai','score':0},
    {'text':'aswan','score':0}]
    },
    

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.workspace_premium_outlined),
          backgroundColor: const Color.fromARGB(255, 13, 183, 211),
          title:  const Text('General question application'),
          actions: [
            IconButton(onPressed: (){
             setState(() {
               nightMood = !nightMood;
             });
            },
             icon:Icon(nightMood == true? Icons.nightlight_outlined : Icons.nightlight),
             iconSize: 30,
              )
           ],
          ),
        body: Container(
         color: nightMood == true? Colors.white:Colors.black,
        child: _indexOfQuestions<_questions.length?  Quiz(
          _questions,
          _indexOfQuestions,
          answerFunction
        ): Result(restartTheApp,totalScore)

        )
      ),
    );
  }
}
