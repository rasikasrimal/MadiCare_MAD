import 'package:flutter/material.dart';
import 'package:medicare/profile/Homepage.dart';
import 'package:medicare/profile/profileList_page.dart';
import 'package:medicare/profile/mainapp.dart';

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final screens = [
    const Home(),
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentPage,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            currentIndex: currentPage,
            onTap: (index) {
              setState(() {
                currentPage = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: currentPage == 0
                      ? const Icon(Icons.home, color: Colors.black)
                      : const Icon(Icons.home, color: Colors.brown),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: currentPage == 1
                      ? const Icon(
                          Icons.person,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.person,
                          color: Colors.brown,
                        ),
                  label: "Profile"),
              BottomNavigationBarItem(
                  icon: currentPage == 2
                      ? const Icon(Icons.chat, color: Colors.black)
                      : const Icon(Icons.chat, color: Colors.brown),
                  label: "Chat"),
              BottomNavigationBarItem(
                  icon: currentPage == 3
                      ? const Icon(Icons.calendar_month, color: Colors.black)
                      : const Icon(Icons.calendar_month, color: Colors.brown),
                  label: "Calender"),
              BottomNavigationBarItem(
                  icon: currentPage == 4
                      ? const Icon(Icons.view_list, color: Colors.black)
                      : const Icon(Icons.view_list, color: Colors.brown),
                  label: "List"),
            ]));
  }
}
