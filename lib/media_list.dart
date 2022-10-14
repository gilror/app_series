import 'package:flutter/material.dart';
import 'package:movie_app/common/HttpHandler.dart';
import 'package:movie_app/model/Media.dart';
import 'package:movie_app/media_list_item.dart';

class MediaList extends StatefulWidget {
  const MediaList({super.key});

  @override
  _MediaListState createState() => _MediaListState();
}

class _MediaListState extends State<MediaList> {
  final List<Media> _media = [];
  @override
  void initState() {
    super.initState();
    // loadMovie();
    loadSeries();
  }

  // void loadMovie() async {
  //   var movies = await HttpHandler().fetchMovies();
  //   setState(() {
  //     _media.addAll(movies);
  //   });
  // }

  void loadSeries() async {
    var series = await HttpHandler().fetchSeries();
    setState(() {
      _media.addAll(series);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _media.length,
      itemBuilder: (BuildContext context, int index) {
        return MediaListItem(_media[index]);
      },
    );
  }
}
