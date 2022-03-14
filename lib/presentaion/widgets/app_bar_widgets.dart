import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstSize.kheight,
        Row(
          children: [
            ConstSize.kwidth,
            Text(
              title,
              // style: GoogleFonts.montserrat(
              //     fontSize: 25,
              //     color: Colors.orange,
              //     fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              children: const [
                Text(
                  'Dubai',
                  // style: GoogleFonts.montserrat(
                  //     fontSize: 25,
                  //     color: Colors.blue,
                  //     fontWeight: FontWeight.bold),
                ),
                ConstSize.kwidth,
                Icon(
                  Icons.location_on,
                  color: Colors.orange,
                ),
                ConstSize.kwidth,
              ],
            ),
          ],
        ),
      ],
    );
  }
}
