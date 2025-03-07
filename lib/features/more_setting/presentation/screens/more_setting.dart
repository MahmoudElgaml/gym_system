import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_system/core/global_model/list_tile_model.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:gym_system/core/utils/fonts.dart';
import 'package:gym_system/features/more_setting/presentation/widgets/more_list_tile_widget.dart';

class MoreSettingScreen extends StatelessWidget {
  const MoreSettingScreen({super.key});
  static const List<ListTileModel> moreSettingList = [
    ListTileModel(
      title: 'My Data',
      icon: Icons.person_outlined,
    ),
    ListTileModel(
      title: 'My Subscription',
      icon: Icons.subscriptions_outlined,
    ),
    ListTileModel(
      title: 'invitation',
      icon: Icons.card_membership_outlined,
    ),
    ListTileModel(
      title: 'coaches',
      icon: Icons.sports_motorsports,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoreSettingScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: moreSettingList
              .map(
                (e) => MoreItemListTile(
                  title: e.title,
                  icon: e.icon,
                  onTap: () {
                    // هنا يصحبي شوف عايز تروح فين 
                    switch(e.title){
                      case 'My Data':
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => MyDataScreen()));
                        break;
                      case 'My Subscription':
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => MySubscriptionScreen()));
                        break;
                      case 'invitation':
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => InvitationScreen()));
                        break;
                      case 'coaches':
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => CoachesScreen()));
                        break;
                    }
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

