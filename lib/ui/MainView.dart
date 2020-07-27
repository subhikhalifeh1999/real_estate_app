import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/explore/explore.dart';
import 'package:real_estate_app/ui/favourite/favorite.dart';
import 'package:real_estate_app/ui/notification.dart';
import 'package:real_estate_app/ui/profile.dart';
import 'package:real_estate_app/widget/bottom_navigation_bar.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  int currentIndex = 0 ;

  onTap(int index)
  {
    setState(() {
      currentIndex =index;
    });
  }

   final tabs =[
    ExploreView(),
    FavoriteView(),
    NotificationsView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavBar(
        iconProfile:CupertinoIcons.home ,
        iconFavorite:currentIndex == 1 ? CupertinoIcons.heart_solid: CupertinoIcons.heart,
        iconAlert: currentIndex == 2 ?CupertinoIcons.news_solid :CupertinoIcons.news,
        iconExplore:CupertinoIcons.search,
        textProfile: "Profile",
        textFavorite:"Favorite",
        textExplore: "Explore",
        textAlert: "News",
        onTap: onTap,
        index: currentIndex,
      ),
    );
  }
}
