import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

import 'package:testing/Utils/utils.dart';
import 'package:testing/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.2)),
        centerTitle: true,
        title: const Text(
          'Book Store',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CarouselSliderPage(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'Assets/book1.png',
                      scale: 2,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'Assets/book2.png',
                      scale: 2,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'Assets/book3.png',
                      scale: 2,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'Assets/book4.png',
                      scale: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey.shade400,
        backgroundColor: Colors.teal,
        items: const [
          Icon(
            Icons.person,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.area_chart_outlined,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.check_box_outline_blank_rounded,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.check_box_outline_blank_rounded,
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
