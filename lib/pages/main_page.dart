import 'package:flutter/material.dart';

import '../components/text.dart';
import '../models/menu_tab.dart';


class MainPage extends StatefulWidget {
    const MainPage({super.key});

    @override
    MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  static const String title = "Haryo Bimo";
  static const double titleSize = 25.0;
  static const double tabTitleSize = 18.0;
  static const double tabWidth = 400.0;
  static const double titleLeftMargin = 100.0;
  static const double toolbarHeight = 100.0;
  static const double tabRightMargin = 100.0;

  late double screenWidth;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        vsync: this,
        length: MenuTab.values.length
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: toolbarHeight,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: titleLeftMargin,
              ),
              child: const StylizedText(title, titleSize, FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: tabRightMargin,
              ),
              width: tabWidth,
              child: TabBar(
                dividerColor: Colors.transparent,
                controller: _tabController,
                tabs: MenuTab.values.map<Widget>((val) {
                  return Tab(child: StylizedText(val.title, tabTitleSize, FontWeight.w600));
                }).toList(),
              ),
            ),
          ]
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: MenuTab.values.map<Widget>((val) {
          switch (val) {
            case MenuTab.about:
              return Container(color: Colors.grey); // Example content
            case MenuTab.contact:
              return Container(color: Colors.grey); // Example content
            case MenuTab.projects:
              return Container(color: Colors.grey); // Example content
          }
        }).toList(),
      ),
    );
  }
}