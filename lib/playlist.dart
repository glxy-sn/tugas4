import 'package:flutter/material.dart';
import 'package:tugas4/song_dummy.dart';
import 'package:tugas4/detail_page.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  var songFavorite = <Song>[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Playlist'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 4 / 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemCount: songList.length,
          itemBuilder: (context, index) {
            final song = songList[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailPage(song: song, favorite: songFavorite,))
                  );
                },
                child: GridTile(
                  child: Image.network(
                    song.imageURL[0],
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text(
                      song.name,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      song.artist,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(song.isFavorite ? Icons.favorite : Icons.favorite_border),
                        color: Colors.red,
                      onPressed: (){
                        setState(() {
                          song.isFavorite = !song.isFavorite;
                        });
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

