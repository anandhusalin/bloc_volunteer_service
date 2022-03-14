import 'package:flutter/material.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              // labelText: 'Enter Name Here',

              hintText: 'Search Your Services',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 35,
              )),
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
