import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_app/widgets/topics.dart';
import 'package:youtube_clone_app/widgets/video_card_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.network(
          "https://cdn-icons-png.flaticon.com/512/1384/1384060.png",
          scale: 17,
        ),
        title: const Text(
          "Youtube",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_sharp,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 2, left: 5),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[200]),
                        height: 40,
                        width: 40,
                        child: Center(
                          child: Icon(Icons.menu),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          children:
                              topics.map((e) => TopicsView(topics: e)).toList(),
                        ),
                      ),
                      Text(
                        "Send feedback",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          VideoCardView(),
          VideoCardView(),
          VideoCardView(),
          VideoCardView(),
        ],
      ),
    );
  }
}
