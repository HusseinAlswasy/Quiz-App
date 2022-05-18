import 'package:flutter/material.dart';

import 'cubit/cubit.dart';

class Answer extends StatelessWidget {

  final String TextAnswer;

  final Function() x;


  Answer(this.TextAnswer,this.x);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text(
            TextAnswer,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          onPressed: x,
          color: Colors.blue,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
