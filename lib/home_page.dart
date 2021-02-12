import 'package:flutter/material.dart';
import 'package:flutter_estatetiel/widgets/mission_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('SpaceX'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  MissionDetail(),
                  Padding(
                    padding: const EdgeInsets.only(left: 6, right: 6),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
