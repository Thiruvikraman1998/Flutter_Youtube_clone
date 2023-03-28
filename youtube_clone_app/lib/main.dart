import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_clone_app/screens/onboarding.dart';

void main(List<String> args) {
  runApp(const YoutubeClone());
}

class YoutubeClone extends StatefulWidget {
  const YoutubeClone({super.key});

  @override
  State<YoutubeClone> createState() => _YoutubeCloneState();
}

class _YoutubeCloneState extends State<YoutubeClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
