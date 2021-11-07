import 'package:flutter/material.dart';
import 'package:flutter_article/layouts/page_layout.dart';
import 'package:flutter_article/models/post.dart';

class PostPage extends StatefulWidget {
  final int id;
  const PostPage({Key? key, required this.id}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool isLoading = true;
  Post? post;

  @override
  void initState() {
    super.initState();
    print(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("#1",style: TextStyle(fontSize: 12, color: Colors.blue)),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: const Text(
                      "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Text(
                    "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
                  ),
                ],
              ),
            )
          )
        ],
      )
    );
  }
}
