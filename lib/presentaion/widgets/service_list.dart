import 'package:bloc_volunteer_service/model/home_screen_model.dart';
import 'package:flutter/material.dart';

import 'package:bloc_volunteer_service/presentaion/widgets/services_content.dart';

class ServiceList extends StatelessWidget {
  final List<HomeServicesModel> users;
  const ServiceList({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(users.length, (index) {
        return Center(
          child: ProfileListview(
            list: users[index],
          ),
        );
      }),
    );
  }
}
