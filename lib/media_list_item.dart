import 'package:flutter/material.dart';
import 'package:movie_app/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;

  const MediaListItem(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: unnecessary_new
      child: new Column(
        children: <Widget>[
          Stack(children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: "assets/images/load.png",
              image: media.getBackDropUrl(),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
              fadeInDuration: const Duration(milliseconds: 800),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.grey[900]?.withOpacity(0.5)),
                constraints: const BoxConstraints.expand(height: 55.0),
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // ignore: unnecessary_new
                  new Text(
                    media.title,
                    style: const TextStyle(
                        fontFamily: "Alfa", color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    width: 280.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        media.getGenres(),
                        style: const TextStyle(fontFamily: "PT"),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 10.0,
              bottom: 10.0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(media.voteAverage.toString()),
                      Container(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.lime[900],
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
