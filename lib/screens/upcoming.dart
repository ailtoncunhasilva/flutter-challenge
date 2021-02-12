import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          child: Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 2,
            child: Column(
              children: [
                Row(
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
              ],
            ),
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
                  'LAUNCH DATE',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Thu Oct 17 5:30:00 2019',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'LAUNCH SITE',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Cape Canaveral Air Force Station Space Launch Complex 40',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'COUNT DOWN',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '5 Hrs 30mins more...',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
