import 'package:flutter/material.dart';

class MissionDetail extends StatefulWidget {
  @override
  _MissionDetailState createState() => _MissionDetailState();
}

class _MissionDetailState extends State<MissionDetail> {
  int selectIndex = 0;
  final List<String> menu = ['Upcoming', 'Launches', 'Rockets'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                children: [
                  Text(
                    menu[index],
                    style: TextStyle(
                      color: index == selectIndex ? Colors.pink : Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: 3,
                    width: 40,
                    decoration: BoxDecoration(
                      color: index == selectIndex ? Colors.pink : Colors.grey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
