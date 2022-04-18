import 'package:flutter/material.dart';
import 'package:flutter_skeleton_new/NavDrawer.dart';

class Contact extends StatelessWidget {
  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact"),
        ),
        drawer: NavDrawer(),
        body: const Center(child: Text("This is contact page")));
  }
}