import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:youtube_clone_app/widgets/topics.dart';
import 'package:youtube_clone_app/widgets/topics_container.dart';
import 'package:youtube_clone_app/widgets/video_card_widget.dart';

import '../models/video_class.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> bodyCards = [];

    //Video.videoList.map((e) => bodyCards.add(e));

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
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 10,
                top: 7,
                child: Container(
                  constraints: BoxConstraints(minHeight: 15, minWidth: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "10",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
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
      // body: ListView.builder(
      //   itemCount: Video.videoList.length,
      //   itemBuilder: (context, index) {
      //     return VideoCardView(
      //       thumb: Video.videoList[index]["snippet"]["thumbnails"]["medium"]
      //           ["url"],
      //       title: '',
      //       channelName: '',
      //       viewCount: '',
      //       datePublished: '',
      //     );
      //   },
      // ),
      body: ListView(
        children: Video.videoList.map((videoData) {
          return VideoCardView(
            videoData: videoData,
          );
        }).toList(),
      ),
    );
  }
}
