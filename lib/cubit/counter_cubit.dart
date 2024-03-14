import 'package:bloc/bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit <CounterState>{
  CounterCubit(): super(InitState());

  int teamAPoints=0;
  int teamBPoints=0;
  add1ToTeamA(){
    teamAPoints=teamAPoints+1;
    emit(Add1ToTeamAState());
  }
  add2ToTeamA(){
    teamAPoints=teamAPoints+2;
    emit(Add2ToTeamAState());
  }
  add3ToTeamA(){
    teamAPoints=teamAPoints+3;
    emit(Add3ToTeamAState());
  }
  add1ToTeamB(){
    teamBPoints=teamBPoints+1;
    emit(Add1ToTeamBState());
  }
  add2ToTeamB(){
    teamBPoints=teamBPoints+2;
    emit(Add2ToTeamBState());
  }
  add3ToTeamB(){
    teamBPoints=teamBPoints+3;
    emit(Add3ToTeamBState());
  }
  reset(){
     teamAPoints=0;
     teamBPoints=0;
    emit(ResetState());
  }
}
