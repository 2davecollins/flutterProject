import 'package:flutter/material.dart';

import 'tabs/tab_one.dart';
import 'tabs/tab_two.dart';
import 'tabs/tab_three.dart';



void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          ),
        ),
      ),
    );
  }
}

