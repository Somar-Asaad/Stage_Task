import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:stage_task/theme_manager.dart';
import 'package:stage_task/chats_screen.dart';
import 'package:stage_task/calls_screen.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final List<Widget> tabs = [
    const HomePageScreen(),
    const ChatsScreen(),
    const CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      title: 'Stage Company Task',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: tabs[currentIndex],
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(bottom: 10),
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                  debugPrint(index.toString());
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Remix.home_5_fill),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Remix.wechat_2_line),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Remix.phone_line),
                  label: 'Calls',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
