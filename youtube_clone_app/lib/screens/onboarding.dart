import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:youtube_clone_app/api/videoListapi.dart';
import 'package:youtube_clone_app/widgets/topics.dart';
import 'package:youtube_clone_app/widgets/topics_container.dart';
import 'package:youtube_clone_app/widgets/video_card_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  Future<VideoList>? _fetchVideos;
  @override
  void initState() {
    super.initState();
    _fetchVideos = fetchVideosList();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bodyCards = [];

    //Video.videoList.map((e) => bodyCards.add(e));
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 50,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(50), child: TopicsScroller()),
            // flexibleSpace: FlexibleSpaceBar(
            //   background: TopicsScroller(),
            // ),
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
                      child: const Text(
                        "10",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          //OnBoardingScreen(),
          SliverToBoxAdapter(
            child: FutureBuilder(
              future: _fetchVideos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var items = snapshot.data!.items;
                  //debugPrint(snapshot.data.toString());
                  debugPrint(snapshot.data!.items![0].toString());
                  return ListView.builder(
                      itemCount: items!.length,
                      itemBuilder: (context, index) {
                        return VideoCardView(
                          items: items[index],
                        );
                      });
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Videos Fetch error"),
                  );
                }
                return const Center(
                  child: Text("Waiting to load Data..."),
                );
              },
            ),
          )
          // ListView(
          //   children: Video.videoList.map((videoData) {
          //     return VideoCardView(
          //       videoData: videoData,
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}


// ListView(
//         children: Video.videoList.map((videoData) {
//           return VideoCardView(
//             videoData: videoData,
//           );
//         }).toList(),
//       ),