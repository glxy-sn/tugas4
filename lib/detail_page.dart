import 'package:flutter/material.dart';
import 'package:tugas4/song_dummy.dart';
import 'package:url_launcher/url_launcher.dart';

/**class MyButton extends StatelessWidget {
    final String url;
    const MyButton({required this.url});

    void _launchURL() async{
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    }
    }


    @override
    Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: _launchURL,
    child: Icon(Icons.share),
    );
    }
    }
 **/

class DetailPage extends StatefulWidget {
  final Song song;
  final List<Song> favorite;

  //const DetailPage ({required this.buttonText, required this.url, this.song, this.favorite});
  const DetailPage({Key? key, required this.song, required this.favorite}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();

}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;
  String websiteUrl = "";

  setFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        widget.favorite.add(widget.song);
      } else {
        widget.favorite.remove(widget.song);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.song.name),
        actions: [
          IconButton(
            onPressed: () {
              setFavorite();
            },
            icon: Icon(Icons.favorite,
                color: isFavorite ? Colors.red : Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 14, 0),
            child: IconButton(
                onPressed: () {
                  launch(widget.song.spotifyLink);
                  //MyButton(url: widget.song.spotifyLink);
                  // launchUrl(widget.song.spotifyLink);
                  //print(widget.song.spotifyLink);
                },
                icon: const Icon(Icons.share)),
          )
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 14.0),
          //   child: Icon(Icons.favorite),
          // )
        ],
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(vertical: 8),
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Image.network(
                            widget.song.imageURL[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      widget.song.name,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      widget.song.artist,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Text('About',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(widget.song.about,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('Release date',
                            style: TextStyle(fontSize: 16)
                        ),
                        Text(widget.song.releaseDate,
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('Genre',
                            style: TextStyle(fontSize: 16)
                        ),
                        Text(widget.song.genre.join(", "),
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),]
      ),
    );
  }
}
