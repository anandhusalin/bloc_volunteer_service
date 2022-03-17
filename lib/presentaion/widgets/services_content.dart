import 'package:bloc_volunteer_service/model/home_screen_model.dart';
import 'package:flutter/material.dart';

class ProfileListview extends StatelessWidget {
  final HomeServicesModel list;
  const ProfileListview({
    required this.list,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(list.img1!)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 45,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      list.taskTitle!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              bottom: 0,
            )
          ],
        ));
  }
}
