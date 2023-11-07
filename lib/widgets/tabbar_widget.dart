import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final List<Tab> tabs;
  final List<Widget> children;

  const TabBarWidget(
      {super.key,
      required this.title,
      required this.tabs,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              tabs: tabs,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
            ),
            elevation: 20,
            titleSpacing: 20,
          ),

          body: TabBarView(children: children),
        ));
  }
}
