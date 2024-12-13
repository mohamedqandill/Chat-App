import 'package:chat_app/core/resources/styles_manager.dart';
import 'package:chat_app/core/widget/custom_elevated_button.dart';
import 'package:chat_app/features/taps/chats/presentation/chats_screen.dart';
import 'package:chat_app/features/taps/home/presentation/home_screen.dart';
import 'package:chat_app/features/taps/posts/presentation/post_screen.dart';
import 'package:chat_app/features/taps/settings/presentation/settings_screen.dart';
import 'package:chat_app/features/taps/users/presentation/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routes_manager/routes.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}
List<Widget> screens=[
  const HomeScreen(),
  const ChatsScreen(),
  const PostScreen(),
  const UserScreen(),
  const SettingsScreen()
];
int selectedIndex=0;

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          iconSize: 30,
          currentIndex: selectedIndex,
          selectedLabelStyle:
              getBoldStyle(color: Colors.blue).copyWith(fontSize: 15.sp),
          unselectedLabelStyle:
              getMediumStyle(color: Colors.grey).copyWith(fontSize: 12.sp),
          onTap: (value) {
            selectedIndex=value;
            setState(() {
              selectedIndex==2?Navigator.pushNamed(context, Routes.post):false;

            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wechat_sharp), label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Posts"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Users"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: screens[selectedIndex],
    );
  }
}
