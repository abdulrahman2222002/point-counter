// ignore_for_file: file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
import 'cubit/counter_state.dart';


class pointCounter extends StatelessWidget {
  const pointCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          CounterCubit cubit = BlocProvider.of(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: const Text('point counter'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text(
                            '${cubit.teamAPoints}',
                            style: const TextStyle(
                              fontSize: 140,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            onPressed: () {
                              cubit.add1ToTeamA();
                            },
                            child: Container(
                              width: 170,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber,
                              ),
                              child: const Center(
                                child: Text(
                                  'Add 1 point',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            onPressed: () {
                              cubit.add2ToTeamA();
                            },
                            child: Container(
                              width: 170,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber,
                              ),
                              child: const Center(
                                child: Text(
                                  'Add 2 point',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            onPressed: () {
                              cubit.add3ToTeamA();
                            },
                            child: Container(
                              width: 170,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber,
                              ),
                              child: const Center(
                                child: Text(
                                  'Add 3 point',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, top: 20),
                        child: Container(
                          width: 2,
                          height: 400,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text(
                            '${cubit.teamBPoints}',
                            style: const TextStyle(
                              fontSize: 140,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            onPressed: () {
                              cubit.add1ToTeamB();
                            },
                            child: Container(
                              width: 170,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber,
                              ),
                              child: const Center(
                                child: Text(
                                  'Add 1 point',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            onPressed: () {
                              cubit.add2ToTeamB();
                            },
                            child: Container(
                              width: 170,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber,
                              ),
                              child: const Center(
                                child: Text(
                                  'Add 2 point',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            onPressed: () {
                              cubit.add3ToTeamB();
                            },
                            child: Container(
                              width: 170,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber,
                              ),
                              child: const Center(
                                child: Text(
                                  'Add 3 point',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 30,),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: () {
                      cubit.reset();
                    },
                    child: Container(
                      width: 170,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber,
                      ),
                      child: const Center(
                        child: Text(
                          'Reset',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },

        listener: (context, state) {},
      ),
    );
  }
}


