import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:ux1/const.dart';
import 'package:ux1/screens/tabs/account_tab_page.dart';
import 'package:ux1/screens/tabs/favorite_tab_page.dart';
import 'package:ux1/screens/tabs/home_tab_page.dart';
import 'package:ux1/screens/tabs/search_tab_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: _buildTabBar(context),
          body: buildTabBarView(context),
        ),
      ),
    );
  }

  Widget buildTabBarView(BuildContext context) {
    return TabBarView(
      children: [
        buildHomePageTabWidget(context),
        buildSearchPageTabWidget(),
        buildFavoritePageTabWidget(),
        buildAccountPageTabWidget(),
      ],
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
        bottom: 20,
        top: 20,
      ),
      child: TabBar(
        labelColor: colorBlue,
        unselectedLabelColor: colorGrey,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: colorBlue,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home,
              size: iconSize,
            ),
          ),
          Tab(
            icon: Icon(
              Boxicons.bx_compass,
              size: iconSize,
            ),
          ),
          Tab(
            icon: Icon(
              Boxicons.bx_bookmark_minus,
              size: iconSize,
            ),
          ),
          Tab(
            icon: Icon(
              Boxicons.bx_user,
              size: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
