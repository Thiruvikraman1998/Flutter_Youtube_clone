import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class VideoCardView extends StatelessWidget {
  const VideoCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/qLGZbo_YjqE/mqdefault.jpg"))),
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
            title: const Text(
              "Ravanasura Movie Trailer | Mass Maharaja Ravi Teja | Sushanth | Sudheer Varma | Abhishek Nama",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            subtitle: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Abhishek Pictures • Views • Date",
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}
