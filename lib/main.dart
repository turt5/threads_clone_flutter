import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:threads_clone/pages/activity.dart';
import 'package:threads_clone/pages/home.dart';
import 'package:threads_clone/pages/profile.dart';
import 'package:threads_clone/pages/search.dart';
import 'package:threads_clone/pages/write.dart';
import 'package:threads_clone/util/model/posts.dart';
import 'package:threads_clone/util/navigation_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => NavigationProvider(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));

    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: Scaffold(
        body: _buildPage(context),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            currentIndex: Provider.of<NavigationProvider>(context).currentIndex,
            onTap: (index) {
              Provider.of<NavigationProvider>(context, listen: false)
                  .changeIndex(index);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            
            selectedLabelStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),

            selectedItemColor: Colors.blue,
            items: [
              _buildBottomNavigationBarItem(
                icon: 'assets/images/home.png',
                label: 'Home',
                index: 0,
              ),
              _buildBottomNavigationBarItem(
                icon: 'assets/images/search.png',
                label: 'Search',
                index: 1,
              ),
              _buildBottomNavigationBarItem(
                icon: 'assets/images/write.png',
                label: 'Write',
                index: 2,
              ),
              _buildBottomNavigationBarItem(
                icon: 'assets/images/heart.png',
                label: 'Activity',
                index: 3,
              ),
              _buildBottomNavigationBarItem(
                icon: 'assets/images/user.png',
                label: 'Profile',
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String icon,
    required String label,
    required int index,
  }) {
    bool isSelected =
        index == Provider.of<NavigationProvider>(context).currentIndex;

    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        color: isSelected ? Colors.blue : Colors.grey.shade500,
        width: 25,
      ),
      label: label,
    );
  }

  Widget _buildPage(BuildContext context) {
    switch (Provider.of<NavigationProvider>(context).currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return SearchPage();
      case 2:
        return WritePage();
      case 3:
        return ActivityPage();
      case 4:
        return ProfilePage();
      default:
        return Container();
    }
  }
}
