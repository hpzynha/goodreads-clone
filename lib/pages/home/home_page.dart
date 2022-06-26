import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goodreads/helpers/app_colors.dart';
import 'package:goodreads/pages/home/widget/home_books_widget.dart';
import 'package:goodreads/pages/home/widget/home_explore_widget.dart';
import 'package:goodreads/pages/home/widget/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    const HomeWidget(),
    const HomeExploreWidget(),
    const HomeBooksWidget(),
    const HomeWidget(),
  ];

  void onTabTapped(int index) async {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          backgroundColor: backgroundInput,
          onTap: onTabTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: primaryColor,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                color: primaryColor,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  color: primaryColor,
                ),
                label: "Books"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: primaryColor,
                ),
                label: "Menu"),
          ]),
    );
  }
}
