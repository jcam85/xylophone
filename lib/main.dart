import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  void playNote(int note) {
    // audioCache.play('/assets/audios/note$note.wav');
    final player = AudioPlayer();
    player.play(AssetSource('audios/note$note.wav'));
  }

  Widget buildKey(
      {required Color colorKey, required int note, required String notas}) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(notas,
              style: TextStyle(fontSize: 25.0, color: Colors.white)),
        ),
      ),
    );
  }

  Widget xiloFono(String titulo, List<Widget> notamusical) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(titulo),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.music_note_sharp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.library_music,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: notamusical,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return xiloFono("XyloPhone", [
      buildKey(colorKey: Colors.pink, note: 1, notas: "Do"),
      buildKey(colorKey: Colors.indigo, note: 2, notas: "Re"),
      buildKey(colorKey: Colors.green, note: 3, notas: "Mi"),
      buildKey(colorKey: Colors.yellow, note: 4, notas: "Fa"),
      buildKey(colorKey: Colors.orange, note: 5, notas: "Sol"),
      buildKey(colorKey: Colors.brown, note: 6, notas: "La"),
      buildKey(colorKey: Colors.blue, note: 7, notas: "Si")
    ]);
    // Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.black,
    //     title: Text("Xylophone"),
    //     centerTitle: true,
    //   ),

    // body: Column(
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     buildKey(colorKey: Colors.pink, note: 1, notas: "Do"),
    //     buildKey(colorKey: Colors.indigo, note: 2, notas: "Re"),
    //     buildKey(colorKey: Colors.green, note: 3, notas: "Mi"),
    //     buildKey(colorKey: Colors.yellow, note: 4, notas: "Fa"),
    //     buildKey(colorKey: Colors.orange, note: 5, notas: "Sol"),
    //     buildKey(colorKey: Colors.brown, note: 6, notas: "La"),
    //     buildKey(colorKey: Colors.blue, note: 7, notas: "Si"),
    //   ],
    // ),
  }
}
