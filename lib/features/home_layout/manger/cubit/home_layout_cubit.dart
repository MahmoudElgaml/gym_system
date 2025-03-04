import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gym_system/features/home/home_screen.dart';
import 'package:gym_system/features/profile/profile_screen.dart';
import 'package:gym_system/features/scan_qr/scan_qr_screen.dart';
import 'package:meta/meta.dart';

import '../../../more_setting/more_setting.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeScreenState());


  changeScreen(int index){
    switch(index){
      case 0:
        emit(HomeScreenState());
        break;
      case 1:
        emit(ProfileScreenState());
        break;
      case 2:
        emit(MoreSettingScreenState());
        break;
      case 3:
        emit(ScanQrScreenState());
        break;
    }

  }
}
