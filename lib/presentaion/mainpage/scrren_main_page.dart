import 'package:flutter/material.dart';

import 'package:bloc_volunteer_service/model/home_screen_model.dart';
import 'package:bloc_volunteer_service/presentaion/addtask/screen_add_task.dart';
import 'package:bloc_volunteer_service/presentaion/cart/screen_cart.dart';
import 'package:bloc_volunteer_service/presentaion/home/screen_home.dart';
import 'package:bloc_volunteer_service/presentaion/mainpage/widgets/bottom_nav.dart';
import 'package:bloc_volunteer_service/presentaion/settings/screen_settings.dart';

import '../profile/screen_profile.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({
    Key? key,
  }) : super(key: key);

  final _pages = [
    const ScreenHome(),
    const Profile(user: []),
    const AddScreen(),
    const Settings(),
    const Cart()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
