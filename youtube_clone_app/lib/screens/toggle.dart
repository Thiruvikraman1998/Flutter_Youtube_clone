// example code to learn toggle buttons.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:youtube_clone_app/widgets/topics.dart';

final List topics = [
  "All",
  "Flutter",
  "Computer Science",
  "Sitcoms",
  "Live",
  "Scene",
  "Game Shows",
  "Gadgets",
  "Recently uploaded",
  "New to you"
];

class ToggleViews extends StatefulWidget {
  const ToggleViews({super.key});

  @override
  State<ToggleViews> createState() => _ToggleViewsState();
}

class _ToggleViewsState extends State<ToggleViews> {
  bool isList = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle between list & grid"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ToggleButtons(
            isSelected: [isList, !isList],
            children: const [
              Icon(Icons.list_alt),
              Icon(Icons.grid_view),
            ],
            onPressed: (index) {
              setState(() {
                isList = index == 0 ? true : false;
              });
            },
          ),
          Expanded(child: isList ? buildList() : buildGrid())
        ],
      ),
    );
  }
}

Widget buildList() {
  return ListView(
    children: topics.map((e) => TopicsView(topics: e)).toList(),
  );
}

Widget buildGrid() {
  return GridView.count(
    crossAxisCount: 2,
    children: topics.map((e) => TopicsView(topics: e)).toList(),
  );
}
