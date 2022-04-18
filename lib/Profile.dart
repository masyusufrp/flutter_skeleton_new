import 'package:flutter/material.dart';
import 'package:flutter_skeleton_new/NavDrawer.dart';

class Profile extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        drawer: NavDrawer(),
        body: const Center(child: Text("This is profile page")));
  }
}