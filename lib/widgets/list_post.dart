import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_article/models/post.dart';
import 'package:http/http.dart' as http;

class ListPost extends StatefulWidget {
  const ListPost({Key? key}) : super(key: key);

  @override
  _ListPostState createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  List<Post> posts = [];
  bool isFetching = true;

  void fetchPost() async {
    Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(uri);
    var result = json.decode(response.body) as List<dynamic>;
    List<Post> postsResult = result.map((e) {
      return Post(id: e['id'], body: e['body'], userId: e['userId'], title: e['title']);
    }).toList();

    setState(() {
      posts = postsResult;
      isFetching = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [Text("Hello !")],
    );
  }
}
