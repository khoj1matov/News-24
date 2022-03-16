import 'package:flutter/material.dart';
import 'package:news24/core/components/my_text_style_const.dart';
import 'package:news24/core/constants/color_Const.dart';
import 'package:news24/main.dart';
import 'package:news24/screens/home/myhome.dart';
import 'package:news24/screens/pages/saved_page.dart';
import 'package:news24/screens/pages/search_page.dart';
import 'package:news24/screens/pages/settings_page.dart';

class DetailsHome extends StatefulWidget {
  const DetailsHome({Key? key}) : super(key: key);

  @override
  State<DetailsHome> createState() => _DetailsHomeState();
}

class _DetailsHomeState extends State<DetailsHome> {
  List<Widget> _pages = [];
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      const MyHome(),
      const SearchPage(),
      const SavedPage(),
      const SettingsPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 35),
        unselectedItemColor: ColorConst.kPrimaryBlack,
        elevation: 0,
        fixedColor: ColorConst.kPrimaryBlack,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (v) {
          setState(() {
            _currentIndex = v;
          });
        },
      ),
    );
  }
}
