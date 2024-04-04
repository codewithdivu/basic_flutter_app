import 'package:flutter/material.dart';
import 'package:flutter_exercise_1/assignment_1.dart';
import 'package:flutter_exercise_1/assignment_2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Assignments of flutter',
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Assignment1(),
                          ));
                    },
                    child: Text("Assignment-1")),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Assignment2(),
                          ));
                    },
                    child: Text("Assignment-2")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
