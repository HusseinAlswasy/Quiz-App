import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/cubit/cubit.dart';
import 'package:quiz/cubit/states.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context, state) {},
        builder:(context, state){
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Welcome(),
          );
        },
      ),
    );
  }
}
