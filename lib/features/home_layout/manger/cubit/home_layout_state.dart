part of 'home_layout_cubit.dart';

@immutable
sealed class HomeLayoutState {
 Widget getWidget();
}

final class HomeScreenState extends HomeLayoutState {
  @override
  Widget getWidget() {
    return const HomeScreen();
  }
}

final class ProfileScreenState extends HomeLayoutState {
  @override
  Widget getWidget() {
    return const ProfileScreen();
  }
}

final class MoreSettingScreenState extends HomeLayoutState {
  @override
  Widget getWidget() {
    return const MoreSettingScreen();
  }
}

final class ScanQrScreenState extends HomeLayoutState {
  @override
  Widget getWidget() {
    return const ScanQrScreen();
  }
}
