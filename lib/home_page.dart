import 'package:flutter/material.dart';
import 'package:flutter_estatetiel/screens/launches.dart';
import 'package:flutter_estatetiel/screens/rockets.dart';
import 'package:flutter_estatetiel/screens/upcoming.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  final TextStyle style = TextStyle(
    fontWeight: FontWeight.bold,
  );

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
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.pink[50],
          primaryColor: Colors.pink,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                  color: Colors.grey,
                ),
              ),
        ),
        child: BottomNavigationBar(
          elevation: 8,
          currentIndex: _page,
          onTap: (p) {
            _pageController.animateToPage(
              p,
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.remove),
              title: Text('Upcoming', style: style),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove),
                title: Text('Launches', style: style)),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove), title: Text('Rockets', style: style)),
          ],
        ),
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
              child: PageView(
                onPageChanged: (p){
                  setState(() {
                    _page = p;
                  });
                },
                controller: _pageController,
                children: [
                  Upcoming(),
                  Launches(),
                  Rockets(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
