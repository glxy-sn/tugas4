import 'package:tugas4/song_dummy.dart';

class Favorite {
  final Song? song;
  final bool? isFavorite;

  Favorite({this.song, this.isFavorite});

  var favoriteList = <Favorite>[];
}