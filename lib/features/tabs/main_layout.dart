import 'package:event_planning/core/utils/theme/app_assets.dart';
import 'package:event_planning/core/utils/theme/app_colors.dart';
import 'package:event_planning/features/tabs/fav_tab/fav_tab.dart';
import 'package:event_planning/features/tabs/home_tab/home_tab.dart';
import 'package:event_planning/features/tabs/map_tab/map_tab.dart';
import 'package:event_planning/features/tabs/profile_tab/profile_tab.dart';
import 'package:flutter/material.dart';

import '../../core/localization/app_localizations.dart';
import '../../core/utils/app_routes/routes_manger.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<Widget> tabs = [HomeTab(), MapTab(), FavoriteTab(), ProfileTab()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesManger.createEvent);
        },
        child: Icon(Icons.add_outlined, size: 40, color: AppColors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          showUnselectedLabels: true,
          items: [
            builtBottomNavigationBarItem(
              index: 0,
              selectedIconPath: AppIcons.homeIconSelected,
              unSelectedIconPath: AppIcons.homeIcon,
              iconName: AppLocalizations.of(context)!.home,
            ),
            builtBottomNavigationBarItem(
              index: 1,
              selectedIconPath: AppIcons.mapIconSelected,
              unSelectedIconPath: AppIcons.mapIcon,
              iconName: AppLocalizations.of(context)!.map,
            ),
            builtBottomNavigationBarItem(
              index: 2,
              selectedIconPath: AppIcons.favIconSelected,
              unSelectedIconPath: AppIcons.favIcon,
              iconName: AppLocalizations.of(context)!.favorite,
            ),
            builtBottomNavigationBarItem(
              index: 3,
              selectedIconPath: AppIcons.profileIconSelected,
              unSelectedIconPath: AppIcons.profileIcon,
              iconName: AppLocalizations.of(context)!.profile,
            ),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  BottomNavigationBarItem builtBottomNavigationBarItem({
    required int index,
    required String selectedIconPath,
    required String unSelectedIconPath,
    required String iconName,
  }) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(
          index == selectedIndex ? selectedIconPath : unSelectedIconPath,
        ),
      ),
      label: iconName,
    );
  }
}
