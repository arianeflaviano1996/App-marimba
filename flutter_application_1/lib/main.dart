import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MarimbaApp());
}

void TocarSom(int numerodosom) {
  final player = AudioPlayer();
  player.play(AssetSource('assets_nota$numerodosom.wav'));
}

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
  
            children: [
               Expanded(
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: (() {
                      TocarSom(1);
                    }),
                    child: null,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: ((() {
                        TocarSom(2);
                      })),
                    )),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      TocarSom(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    color: Colors.red,
                    width: 120,
                    height: 50,
                    child: TextButton(onPressed: ((() {
                      TocarSom(4);
                    })))),
              ),
              Expanded(
                child: Container(
                    color: Colors.grey
                    child: TextButton(onPressed: ((() {
                      TocarSom(5);
                    })))),
              ),
              Expanded(
                child: Container(
                    color: Colors.purple,
                    child: TextButton(onPressed: ((() {
                      TocarSom(6);
                    })))),
              ),
              Expanded(
                child: Container(
                    color: Colors.brown,
                    child: TextButton(onPressed: ((() {
                      TocarSom(7);
                    })))),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
