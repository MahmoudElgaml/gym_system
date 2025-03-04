import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/features/profile/presentation/screens/profile_screen.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(ProfileScreenState());

  changePage(int index) {
    switch (index) {
      case 0:
        emit(ProfileScreenState());
        break;
    }
  }
}
