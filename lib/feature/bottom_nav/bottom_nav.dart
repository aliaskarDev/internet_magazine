import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internet_magazine/constants/const.dart';
import 'package:internet_magazine/constants/icons_path.dart';
import 'package:internet_magazine/feature/catolog/catolog_screen.dart';
import 'package:internet_magazine/feature/location/location_screen.dart';
import 'package:internet_magazine/feature/main/main/main_screen.dart';
import 'package:internet_magazine/feature/profile/profile_screen.dart';
import 'package:internet_magazine/ui/colors.dart';
import 'package:internet_magazine/ui/text_style.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  final ValueNotifier<int> _selectedTabIndex = ValueNotifier<int>(0);

  final List<Widget> _pages = [
    const MainScreen(),
    const CatologScreen(),
    const LocationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _selectedTabIndex,
        builder: (context, selectedIndex, child) {
          return _pages[selectedIndex];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _selectedTabIndex,
        builder: (context, selectedIndex, child) {
          return Container(
            height: 75,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  24,
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                  24,
                ),
              ),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: true,
                useLegacyColorScheme: false,
                selectedLabelStyle: MyTextSTyle.style400w10.copyWith(
                  color: MyColors.mySecondBlue,
                ),
                unselectedLabelStyle: MyTextSTyle.style400w10.copyWith(
                  color: MyColors.mySecondBlue,
                ),
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.main,
                    ),
                    label: BottomText.main,
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.catolog,
                    ),
                    label: BottomText.catalog,
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.location,
                    ),
                    label: BottomText.location,
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.profile,
                    ),
                    label: BottomText.profile,
                  ),
                ],
                currentIndex: selectedIndex,
                onTap: (index) {
                  _selectedTabIndex.value = index;
                },
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _selectedTabIndex.dispose();
    super.dispose();
  }
}
