import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/cubit/states.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int qustionsIndex = 0;
  int totalScoor = 0;
  Color w = Colors.white;
  Color b = Colors.black;
  bool isSwitched = false;


  final List<Map<String, Object>> qustions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Blue', 'score': 2},
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 2},
        {'text': 'white', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite car? ',
      'answer': [
        {'text': 'PMW', 'score': 2},
        {'text': 'Marcidece', 'score': 2},
        {'text': 'tyotaa', 'score': 2},
        {'text': 'hyondaa', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite lab? ',
      'answer': [
        {'text': 'Hp', 'score': 2},
        {'text': 'Apple', 'score': 2},
        {'text': 'Dell', 'score': 2},
        {'text': 'Hwauai', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite football? ',
      'answer': [
        {'text': 'bassket', 'score': 2},
        {'text': 'football', 'score': 2},
        {'text': 'foot', 'score': 2},
        {'text': 'teens', 'score': 2},
      ],
    },
  ];

  void resetQustion() {
    totalScoor = 0;
    qustionsIndex = 0;
    emit(AppResetQustion());
  }

  void answerQustion(int score) {
    /*if(qustionsIndex == qustions.length-1){
      qustionsIndex = 0;
    }
    else {*/
    // qustionsIndex = qustionsIndex + 1;
    //}
    totalScoor += score;
    qustionsIndex++;
    emit(AppChangeIndex());
    print(qustionsIndex);
  }

  void onmChange(value){
    isSwitched =value;
    // if(isSwitched ==true) {
    //   w = Colors.black;
    // }else{
    //   w = Colors.white;
    // }
    if(isSwitched == true)
    {
      b = Colors.white; w = Colors.black;
    }
    if(isSwitched == false)
    {
      b = Colors.black; w = Colors.white;
    }
    emit(AppChangeState());
  }
}
