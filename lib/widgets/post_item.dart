import 'package:flutter/material.dart';
import 'package:flutter_article/models/post.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("#${post.id}",style: const TextStyle(fontSize: 12, color: Colors.blue)),
            Text(post.title)
          ],
        ),
      )
    );
  }
}