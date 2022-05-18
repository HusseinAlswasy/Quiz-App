import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/cubit/cubit.dart';

import 'cubit/states.dart';

class Question extends StatelessWidget {
  final String QustionsText;

  Question(this.QustionsText);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        listener: (context, state) => () {},
    builder: (context, state) {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          QustionsText,
          style: TextStyle(
            fontSize: 25,
            color: AppCubit.get(context).isSwitched == false ? Colors.black:Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }
    );
  }
}
