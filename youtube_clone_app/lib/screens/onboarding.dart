import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:youtube_clone_app/widgets/topics.dart';
import 'package:youtube_clone_app/widgets/topics_container.dart';
import 'package:youtube_clone_app/widgets/video_card_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> bodyCards = [
      VideoCardView(),
      VideoCardView(),
      VideoCardView(),
      VideoCardView(),
      VideoCardView()
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
      body: ListView.builder(
        itemCount: bodyCards.length,
        itemBuilder: (context, index) {
          return bodyCards[index];
        },
      ),
    );
  }
}
