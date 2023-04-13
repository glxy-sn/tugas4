import 'package:flutter/material.dart';
import 'package:tugas4/anggota.dart';
import 'package:tugas4/favorite.dart';
import 'package:tugas4/playlist.dart';
import 'package:tugas4/stopwatch.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anggota()),
                );
              },
              child: Text('Daftar Anggota'),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StopwatchPage()),
                );
              },
              child: Text('Stopwatch'),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SongPage()),
                );
              },
              child: Text('Playlist Lagu'),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favorite()),
                );
              },
              child: Text('Favorite'),
            ),
          ],
        ),
      ),
    );
  }
}
