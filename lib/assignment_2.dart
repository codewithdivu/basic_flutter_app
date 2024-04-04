import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    const users = [
      {
        'title': 'Hey flatterrs, Se what I did with flutter',
        'subtitle': 'That is just a text Descryption of the theme',
        'imageUrl': 'assets/user_1.jpg',
        'color': Colors.red
      },
      {
        'title': 'Hey flatterrs, Se what I did with flutter',
        'subtitle': 'That is just a text Descryption of the theme',
        'imageUrl': 'assets/user_2.jpg',
        'color': Colors.yellow
      },
      {
        'title': 'Hey flatterrs, Se what I did with flutter',
        'subtitle': 'That is just a text Descryption of the theme',
        'imageUrl': 'assets/user_3.jpg',
        'color': Colors.purple
      },
      {
        'title': 'Hey flatterrs, Se what I did with flutter',
        'subtitle': 'That is just a text Descryption of the theme',
        'imageUrl': 'assets/user_4.jpg',
        'color': Colors.green
      },
      {
        'title': 'Hey flatterrs, Se what I did with flutter',
        'subtitle': 'That is just a text Descryption of the theme',
        'imageUrl': 'assets/user_5.jpg',
        'color': Colors.orange
      },
      {
        'title': 'Hey flatterrs, Se what I did with flutter',
        'subtitle': 'That is just a text Descryption of the theme',
        'imageUrl': 'assets/user_6.jpg',
        'color': Colors.blue
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment-2"),
        backgroundColor: Colors.lightBlue[200],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Container(
                height: 140,
                child: Row(
                  children: [
                    Container(
                      height: double.infinity,
                      width: 7,
                      color: users[index]['color'] as Color,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 300,
                      child: Column(
                        children: [
                          Text(
                            "${users[index]['title']}",
                            softWrap: true,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "${users[index]['subtitle']}",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 94,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 25,
                            right: 0,
                            child: Container(
                              height: 70,
                              width: 70,
                              color: users[index]['color'] as Color,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 25,
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(blurRadius: 2)],
                              ),
                              padding: EdgeInsets.all(7),
                              child: Image(
                                  image: AssetImage(
                                      "${users[index]['imageUrl']}")),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
