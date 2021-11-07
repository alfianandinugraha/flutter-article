import 'package:flutter/material.dart';
import 'package:flutter_article/layouts/page_layout.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

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
