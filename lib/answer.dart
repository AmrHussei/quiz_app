import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final String answerText;
  final Function() x;

  // ignore: use_key_in_widget_constructors
  const Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child: ElevatedButton(onPressed: x,
             child: Text(answerText, style: const TextStyle(fontSize: 25),),
             style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(const Color.fromARGB(255, 13, 183, 211 ))),
             ),
    );
  }
}