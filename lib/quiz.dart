import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
 
class Quiz extends StatelessWidget {
 final List<Map<String, Object>> questions;
 final int indexOfQuestions;
 
 final Function(int s) answerFunction;

  // ignore: use_key_in_widget_constructors
  const Quiz(this.questions, this.indexOfQuestions, this.answerFunction);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions[indexOfQuestions]['questionText'].toString()),
            
            ...(questions[indexOfQuestions]['answers'] as List<Map<String,Object>> ).map((ans){
                return Answer(()=> answerFunction(int.parse(ans['score'].toString())), ans['text'].toString());
            })

             
          ],
        );
  }
}