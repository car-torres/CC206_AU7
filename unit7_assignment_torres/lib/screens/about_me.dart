import 'package:assignment_demo/components/tab_widget_1.dart';
import 'package:assignment_demo/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('About Me'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'Personal',
              ),
              Tab(
                icon: Icon(Icons.work),
                text: 'Work',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabWidget1(), // First component
            TabWidget2(), // Second component
          ],
        ),
      ),
    );
  }
}


