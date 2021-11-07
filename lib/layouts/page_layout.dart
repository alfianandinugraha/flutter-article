import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget? child;
  const PageLayout({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Article"),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: child,
      ),
    );
  }
}
