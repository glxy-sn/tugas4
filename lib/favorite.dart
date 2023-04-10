import 'package:flutter/material.dart';
import 'package:tugas4/favorite_list.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('This is my jams'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.favorite), text: 'Favorites',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FavoriteList(),
            ],
          ),
        ),
      );
  }
}
