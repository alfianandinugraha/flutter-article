import 'package:flutter/material.dart';
import 'package:flutter_article/models/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("#${post.id}", style: const TextStyle(fontSize: 12, color: Colors.blue)),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    post.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(post.body),
              ],
            ),
          )
        )
      ],
    );
  }
}
