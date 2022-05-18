import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/cubit/cubit.dart';
import 'package:quiz/cubit/states.dart';
import 'package:quiz/question.dart';
import 'package:quiz/result.dart';


class Quiz extends StatelessWidget {
  Quiz({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) => () {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                value: cubit.isSwitched,
                onChanged:cubit.onmChange,
                activeColor: Colors.white ,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.white,
              ),
            ],
          ),
          body: Container(
            color: cubit.isSwitched == false ? Colors.white:Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: cubit.qustionsIndex < cubit.qustions.length ? Column(
                children: [
                  Question(cubit.qustions[cubit.qustionsIndex]['questionText']
                      .toString()),
                  ...(cubit.qustions[cubit.qustionsIndex]['answer'] as List<
                      Map<String, Object>>).map((answer) {
                    return Answer(answer['text'].toString(), () =>
                        cubit.answerQustion(
                            int.parse(answer['score'].toString())));
                  }).toList(),
                ],
              ) : Result(cubit.resetQustion, cubit.totalScoor),
            ),
          ),
        );
      },
    );
  }
}
