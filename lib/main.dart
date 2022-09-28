import 'package:flutter/material.dart';
import 'package:flutter_layouting/pages/news_list.dart';
import 'package:flutter_layouting/pages/schedule_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Football News'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.newspaper),
                ),
                Tab(
                  icon: Icon(Icons.schedule),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              NewsList(),
              const SchedulesList(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // set our appbar title.
        title: Text('MyApp'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
