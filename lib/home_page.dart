
import 'package:data_table_sortable_example/page/sortable_page.dart';
import 'package:data_table_sortable_example/widgets/tabbar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    // https://www.youtube.com/watch?v=SJxByHLs72k

    return TabBarWidget(
      title: "Sortable table",
      tabs: const [
        Tab(icon: Icon(Icons.sort_by_alpha), text: "Sortable",),
        Tab(icon: Icon(Icons.select_all), text: "selectable",),
        Tab(icon: Icon(Icons.edit), text: "Editable",),
      ],
      children: [
        SortablePage(),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
      ]
    );
  }
}
