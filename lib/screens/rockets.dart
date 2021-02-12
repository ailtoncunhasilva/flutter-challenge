import 'package:flutter/material.dart';

class Rockets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cardItemRocket(context, Colors.green, 'ACTIVE'),
        cardItemRocket(context, Colors.red, 'INACTIVE'),
        cardItemRocket(context, Colors.green, 'ACTIVE'),
      ],
    );
  }
}

Widget cardItemRocket(context, color, text) {
  return Container(
    height: 180,
    child: Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
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
                  SizedBox(
                    height: 30,
                    child: RaisedButton(
                      color: color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onPressed: () {},
                      child: Text(
                        text,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
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
