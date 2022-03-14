import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String text1;
  const ProfileButton({
    required this.text1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 150,
      child: Center(
        child: Text(
          text1,
          style: const TextStyle(color: Colors.red),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey)),
    );
  }
}
