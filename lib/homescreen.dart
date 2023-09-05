import 'package:flutter/material.dart';
import 'package:xo_game/xogame.dart';

class HomeScreen extends StatelessWidget {
  var player1Controller = TextEditingController();
  var player2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XO Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: player1Controller,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                labelText: 'Player 1',
                labelStyle: TextStyle(fontSize: 20),
                hintText: 'Enter your name',
                enabledBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: player2Controller,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                labelText: 'Player 2',
                labelStyle: TextStyle(fontSize: 20),
                hintText: 'Enter your name',
                enabledBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XOGame(
                                player1Name: player1Controller.text,
                                player2Name: player2Controller.text,
                              )));
                },
                child: Text(
                  'Lets play 🤩 !',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
