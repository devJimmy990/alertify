import 'package:flutter/material.dart';
import 'package:news_app/model/model.story.dart';

Widget storyItem({required Stroy stroy, required void Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 58,
            backgroundImage: NetworkImage(stroy.imgSrc),
          ),
          const SizedBox(height: 5),
          Text(stroy.title),
        ],
      ),
    ),
  );
}
