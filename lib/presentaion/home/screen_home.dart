import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:bloc_volunteer_service/presentaion/home/widgets/search_idle.dart';
import 'package:bloc_volunteer_service/presentaion/widgets/app_bar_widgets.dart';

import 'package:bloc_volunteer_service/presentaion/widgets/service_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/category_section.dart';
import '../widgets/moving_card.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int index = 0;
  Widget movingCard() {
    return CarouselSlider(
        items: const [
          BannerCard(url: 'images/Servicebnr.jpg'),
          BannerCard(url: 'images/Servicebnr.jpg'),
          BannerCard(url: 'images/Servicebnr.jpg'),
          BannerCard(url: 'images/Servicebnr.jpg'),
          BannerCard(url: 'images/Servicebnr.jpg'),
        ],
        options: CarouselOptions(
          height: 170,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          onPageChanged: (value, _) {
            // print(value);
            setState(() {
              index = value;
            });
          },
          scrollDirection: Axis.horizontal,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidgets(title: 'Welcome')),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ConstSize.kheight2,
              const SearchIdleWidget(),
              movingCard(),

              //popular section

              const HomeSection3(),
              const ServiceList(),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'CATEGORY',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              const CategorySection(),
              const HomeSection3(),
              const ServiceList(),
            ],
          ),
        ));
  }
}

class HomeSection3 extends StatelessWidget {
  const HomeSection3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'POPULAR SERVICES',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: const [
              Text('View All'),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
