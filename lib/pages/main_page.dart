import 'package:flutter/material.dart';
import '../models/menu_tab.dart';


class MainPage extends StatefulWidget {
    const MainPage({super.key});

    @override
    MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  static const String tabTitle = "Haryo Bimo";
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(tabTitle),
        bottom: TabBar(
          controller: _tabController,
          tabs: MenuTab.values.map<Widget>((val) {
            return Tab(text: val.title);
          }).toList(),
        ),
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