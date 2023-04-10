import 'package:flutter/material.dart';
import 'package:tugas4/song_dummy.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    final favoriteSongs = songList.where((song) => song.isFavorite).toList();
    return ListView.builder(
        itemCount: favoriteSongs.length,
        itemBuilder: (context, index){
          final song = favoriteSongs[index];
          return ListTile(
            title: Text(song.name),
            subtitle: Text(song.artist),
            trailing: IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.red,
              onPressed: (){
                setState(() {
                  song.isFavorite = !song.isFavorite;
                });
              },
            ),
          );
        }
    );
  }
}
