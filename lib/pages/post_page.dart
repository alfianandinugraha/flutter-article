import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_article/layouts/page_layout.dart';
import 'package:flutter_article/models/post.dart';
import 'package:flutter_article/widgets/loading.dart';
import 'package:flutter_article/widgets/post_card.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatefulWidget {
  final int id;
  const PostPage({Key? key, required this.id}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool isFetching = true;
  late Post post;

  void getPost() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/${widget.id}");
    var response = await http.get(uri);
    var body = json.decode(response.body) as Map<String, dynamic>;

    setState(() {
      post = Post(id: body['id'], body: body['body'], title: body['title'], userId: body['userId']);
      isFetching = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: isFetching ? const Loading() : PostCard(post: post)
    );
  }
}
