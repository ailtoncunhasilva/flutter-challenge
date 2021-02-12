import 'package:flutter/material.dart';

class Launches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cardItem(context),
        cardItem(context),
        cardItem(context),
        cardItem(context),
        cardItem(context),
      ],
    );
  }
}

Widget cardItem(context) {
  return Container(
    height: 180,
    child: Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.40,
            padding: EdgeInsets.all(14),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60,
              child: Image.asset('images/starlink2.png'),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'LAUNCH',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Starlink 2',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'CCASE SLC 40',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '16-10-2016',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
