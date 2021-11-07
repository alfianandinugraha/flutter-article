import 'package:flutter/material.dart';
import 'package:flutter_article/layouts/page_layout.dart';
import 'package:flutter_article/widgets/list_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      child: SingleChildScrollView(
        child: ListPost(),
      ),
    );
  }
}
