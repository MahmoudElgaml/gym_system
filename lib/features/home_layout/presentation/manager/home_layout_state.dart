part of 'home_layout_cubit.dart';

@immutable
abstract class HomeLayoutState {
  Widget get page;
}

final class ProfileScreenState extends HomeLayoutState {
  @override
  Widget get page {
    return const ProfileScreen();
  }
}
