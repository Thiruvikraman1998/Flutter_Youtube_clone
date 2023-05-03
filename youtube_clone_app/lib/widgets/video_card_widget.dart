import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:youtube_clone_app/api/videoListapi.dart';

class VideoCardView extends StatelessWidget {
  final Items items;
  const VideoCardView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    //final formatedDate = videoData[''];
    return Container(
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(items.snippet!.thumbnails!.medium!.url!),
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
              items.snippet!.title!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            subtitle: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "${items.snippet!.channelTitle!} • ${items.statistics!.viewCount!}",
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}
