class Track {
  final int id;
  final String title;
  final String artist;

  Track({
    required this.id,
    required this.title,
    required this.artist,
  });

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      artist: json['artist'] ?? '',
    );
  }
}