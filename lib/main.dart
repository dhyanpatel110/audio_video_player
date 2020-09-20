import 'video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'local audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
      routes: {
        '/audio': (context) => Assets_audio(),
        '/video': (context) => VedioApp(),
      },
    );
  }
}

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Media Player')),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/originals/7f/58/94/7f589433feb99ad7cd42f268c8d7f8be.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueAccent.shade100),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/audio');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.music_note),
                            Text(
                              'Audio',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 15,

                                color: Colors.black,

                                // Text styles here
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/video');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.video_library),
                                  Text(
                                    'video',
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15,

                                      color: Colors.black,

                                      // Text styles here
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
                ])));
  }
}