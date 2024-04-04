import 'package:flutter/material.dart';
import 'package:test_elif/presentation/data/bottom__navigation_items.dart';
import 'package:test_elif/presentation/pages/account/account.dart';
import 'package:test_elif/presentation/pages/announcement/announcement.dart';
import 'package:test_elif/presentation/pages/group/group.dart';
import 'package:test_elif/presentation/pages/home/home.dart';
import 'package:test_elif/presentation/pages/issue/issue.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const AnnouncementPage(),
    const IssuePage(),
    const GroupPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: AppFonts.w500f12,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppFonts.w500f12.copyWith(color: AppColors.grey),
        onTap: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        elevation: 3,
        backgroundColor: Colors.white,
        selectedItemColor: mainColor,
        currentIndex: _selectedIndex,
        items: List.generate(
          items.length,
          (index) => BottomNavigationBarItem(
              icon: items[index].image,
              activeIcon: items[index].activeImage,
              label: items[index].text),
        ),
      ),
    );
  }
}
