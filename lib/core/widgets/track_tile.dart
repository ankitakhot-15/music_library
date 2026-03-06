import 'package:flutter/material.dart';
import '../../data/models/track_model.dart';

class TrackTile extends StatelessWidget {
  final Track track;

  const TrackTile({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(track.title),
      subtitle: Text(track.artist),
      trailing: Text(track.id.toString()),
      onTap: () {
        Navigator.pushNamed(
          context,
          "/details",
          arguments: track,
        );
      },
    );
  }
}