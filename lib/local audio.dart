import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assets_audio extends StatelessWidget {
  AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Audio Player")),
            backgroundColor: Colors.blueAccent,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/7f/58/94/7f589433feb99ad7cd42f268c8d7f8be.jpg'),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(children: [
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 5,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://png.pngtree.com/png-clipart/20200727/original/pngtree-inspirational-song-icon-design-logo-png-image_5138594.jpg')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(25)),
                    RaisedButton(
                      color: Colors.orangeAccent,
                      child: Icon(
                        Icons.play_arrow,
                        
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        // ignore: unused_local_variable

                        audioPlayer =
                            await AudioCache().loop("C:\Users\dhyan\Desktop\FLUTTER\flutter_project\task1\assets\music\Believer.mp3");
                        print("hi");
                      },
                    ),
                    RaisedButton(
                      color: Colors.orangeAccent,
                      child: Icon(
                        Icons.pause,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        audioPlayer.pause();
                        print("hiiii");
                      },
                    ),
                    RaisedButton(
                      color: Colors.orangeAccent,
                      child: Icon(
                        Icons.stop,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        audioPlayer.stop();
                        print("stop ");
                      },
                    ),
                  ],
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 5,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://png.pngtree.com/png-clipart/20200727/original/pngtree-inspirational-song-icon-design-logo-png-image_5138594.jpg')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(25)),
                    RaisedButton(
                      color: Colors.orangeAccent,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        audioPlayer = await AudioCache().loop("C:\Users\dhyan\Desktop\FLUTTER\flutter_project\task1\assets\music\Akon.mp3");
                        print("hi");
                      },
                    ),
                    RaisedButton(
                      color: Colors.orangeAccent,
                      child: Icon(
                        Icons.pause,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        audioPlayer.pause();
                        print("hiiii");
                      },
                    ),
                    RaisedButton(
                      color: Colors.orangeAccent,
                      child: Icon(
                        Icons.stop,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        audioPlayer.stop();
                        print("stop ");
                      },
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}