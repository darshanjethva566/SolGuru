import 'package:darshan_jethva_prac/view/home/popular.dart';
import 'package:darshan_jethva_prac/view/home/top_rated.dart';
import 'package:darshan_jethva_prac/view/home/upcoming.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.highlight), text: "Popular"),
            Tab(icon: Icon(Icons.vertical_align_top_outlined), text: "Top Rated"),
            Tab(icon: Icon(Icons.upcoming), text: "Up Coming")
          ],
        ),
      ),
      body:  const TabBarView(
        children: [
          Popular(),
          TopRated(),
          UpComing()
        ],
      ),
    ));
  }
}
