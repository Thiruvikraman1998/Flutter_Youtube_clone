import 'package:flutter/material.dart';
import 'package:youtube_clone_app/widgets/topics.dart';

class TopicsScroller extends StatelessWidget {
  const TopicsScroller({super.key});

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
    return Container(
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
                children: topics.map((e) => TopicsView(topics: e)).toList(),
              ),
            ),
            Text(
              "Send feedback",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
