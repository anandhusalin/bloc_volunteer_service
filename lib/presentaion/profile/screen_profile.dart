import 'package:bloc_volunteer_service/core/colors/colors.dart';
import 'package:bloc_volunteer_service/core/constant.dart';

import 'package:bloc_volunteer_service/presentaion/profile/widgets/profile_button.dart';

import 'package:bloc_volunteer_service/presentaion/widgets/app_bar_widgets.dart';
import 'package:bloc_volunteer_service/presentaion/widgets/service_list.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidgets(
            title: "Profile",
          )),
      body: Center(
        child: ListView(
          children: const [
            ConstSize.kheight,
            ProfileSection1(),
            ProfileSection3(),
            ServiceList(),
          ],
        ),
      ),
    );
  }
}

class ProfileSection1 extends StatelessWidget {
  const ProfileSection1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstSize.kwidth,
        const Text(
          'Hello,',
          style: TextStyle(color: kblack, fontSize: 25),
        ),
        const Text(
          'Anandhu',
          style: TextStyle(color: korange, fontSize: 25),
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(50)),
        ),
        ConstSize.kwidth,
      ],
    );
  }
}

class ProfileSection3 extends StatelessWidget {
  const ProfileSection3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstSize.kheight,
        ConstSize.kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ProfileButton(
              text1: 'your order',
            ),
            ProfileButton(
              text1: 'your order',
            ),
          ],
        ),
        ConstSize.kheight,
        ConstSize.kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ProfileButton(
              text1: 'your order',
            ),
            ProfileButton(
              text1: 'your order',
            ),
          ],
        ),
        ConstSize.kheight
      ],
    );
  }
}
