import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/cubit/cubit.dart';

import 'cubit/states.dart';

class Result extends StatelessWidget {

   final Function() q;
   final int resultScore;

   Result( this.q, this.resultScore);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        listener: (context, state) => () {},
        builder: (context, state) {
      return Center(
        child: Container(
          child: Column(
          children: [
            Text('The Degree 2 by every question',style: TextStyle(color:  AppCubit.get(context).isSwitched == false ? Colors.black:Colors.white),),
            Padding(
              padding: EdgeInsets.only(top: 120),
              child: Text(
                "$resultScore",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color:AppCubit.get(context).isSwitched == false ? Colors.black:Colors.white,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  color: AppCubit.get(context).isSwitched == false ? Colors.black:Colors.white,
                  onPressed: q,
                  child: Text(
                    'Restart The App',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:AppCubit.get(context).isSwitched == false ? Colors.white:Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
          ),
        ),
      );
    }
    );
  }
}
