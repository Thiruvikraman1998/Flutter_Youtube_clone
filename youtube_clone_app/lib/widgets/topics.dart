import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TopicsView extends StatelessWidget {
  final String topics;
  const TopicsView({super.key, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
      height: 30,
      child: Center(
        child: Text(topics),
      ),
    );
  }
}
