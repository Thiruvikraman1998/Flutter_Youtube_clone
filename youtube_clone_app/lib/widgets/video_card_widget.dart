import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class VideoCardView extends StatelessWidget {
  final Map<String, dynamic> videoData;
  const VideoCardView({super.key, required this.videoData});

  @override
  Widget build(BuildContext context) {
    final formatedDate = videoData[''];
    return Container(
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  videoData["snippet"]["thumbnails"]["medium"]["url"],
                ),
              ),
            ),
          ),
          Gap(5),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.grey[200],
                child: const Icon(
                  Icons.person_rounded,
                  size: 40,
                ),
              ),
            ),
            title: Text(
              videoData["snippet"]["title"],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            subtitle: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "${videoData["snippet"]["channelTitle"]} • ${videoData["statistics"]["viewCount"]}",
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}
