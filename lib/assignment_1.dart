import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    List users = [
      {
        "imageUrl": 'assets/user_1.jpg',
        "name": "Laurent 5:40",
        "msg": "How about meeting tommorw?"
      },
      {
        "imageUrl": 'assets/user_2.jpg',
        "name": "Tracy 10:40",
        "msg": "I love that tower!"
      },
      {
        "imageUrl": 'assets/user_3.jpg',
        "name": "Claire 5:40",
        "msg": "It totally make sense to get some?"
      },
      {
        "imageUrl": 'assets/user_4.jpg',
        "name": "Joe 5:40",
        "msg": "Could you ask for it please?"
      },
      {
        "imageUrl": 'assets/user_5.jpg',
        "name": "Mark 5:40",
        "msg": "How are you?"
      },
      {
        "imageUrl": 'assets/user_6.jpg',
        "name": "Williams 5:40",
        "msg": "Yesterday i was not able to do that task?"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignement-1"),
        backgroundColor: Colors.lightBlue[200],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red[100],
            backgroundImage: AssetImage(users[index]['imageUrl']),
          ),
          title: Text(users[index]['name']),
          subtitle: Text(users[index]['msg']),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
