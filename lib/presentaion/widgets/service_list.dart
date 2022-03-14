import 'package:bloc_volunteer_service/presentaion/widgets/services_content.dart';
import 'package:flutter/material.dart';

import '../../model/profile_list_model.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({
    Key? key,
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
      children: List.generate(profilelist.length, (index) {
        return Center(
          child: ProfileListview(
            list: profilelist[index],
          ),
        );
      }),
    );
  }
}
