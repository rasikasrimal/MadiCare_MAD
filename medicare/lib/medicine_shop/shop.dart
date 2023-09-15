import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/profile/Homepage.dart';
import 'package:medicare/profile/profileList_page.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int currentPage = 0;
  final screens = [
    const Home(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Medicine Shop'),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: mainColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Medicine Shop',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Your existing content here
                  // Add your widgets below this comment
                ],
              ),
            ),
          ),
        ],
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
                ? const Icon(Icons.home, color: mainColor)
                : const Icon(Icons.home, color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? const Icon(
                    Icons.person,
                    color: mainColor,
                  )
                : const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? const Icon(Icons.chat, color: mainColor)
                : const Icon(Icons.chat, color: Colors.black),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 3
                ? const Icon(Icons.calendar_month, color: mainColor)
                : const Icon(Icons.calendar_month, color: Colors.black),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 4
                ? const Icon(Icons.view_list, color: mainColor)
                : const Icon(Icons.view_list, color: Colors.black),
            label: "List",
          ),
        ],
      ),
    );
  }
}
