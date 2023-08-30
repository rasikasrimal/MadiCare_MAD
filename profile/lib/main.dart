import 'package:flutter/material.dart';
import 'package:profile/pages/Homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Medical app",
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  // ignore: non_constant_identifier_names
  final screens = [
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
                      ? const Icon(Icons.view_list, color: Colors.black)
                      : const Icon(Icons.view_list, color: Colors.brown),
                  label: "List"),
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
                      ? const Icon(
                          Icons.person,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.person,
                          color: Colors.brown,
                        ),
                  label: "Profile"),
            ]));
  }
}
