import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  List<ListItem> listItem = [
    ListItem(
        isSelected: true, icon: FontAwesomeIcons.home, tiitle: 'Generally'),
    ListItem(
        isSelected: false,
        icon: FontAwesomeIcons.paintRoller,
        tiitle: 'Painting'),
    ListItem(
        isSelected: false,
        icon: FontAwesomeIcons.paintBrush,
        tiitle: 'Cleaning'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.brush, tiitle: 'Repair'),
    ListItem(
        isSelected: true, icon: FontAwesomeIcons.fan, tiitle: 'Temperature'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.tree, tiitle: 'Tree'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.car, tiitle: 'Vechicle'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.dog, tiitle: 'Animal'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listItem.length,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  for (int i = 0; i < listItem.length; i++) {
                    setState(() {
                      if (index == i) {
                        listItem[index].isSelected = true;
                      } else {
                        //the condition to change the highlighted item
                        listItem[i].isSelected = false;
                      }
                    });
                  }
                },
                child: Container(
                  width: 82,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: listItem[index].isSelected
                        ? Colors.orange
                        : Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Icon(listItem[index].icon),
                        Text(
                          listItem[index].tiitle,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class ListItem {
  String tiitle;
  IconData icon;
  bool isSelected;
  ListItem(
      {required this.icon, required this.tiitle, required this.isSelected});
}
