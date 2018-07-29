import 'package:tmdb_dart/tmdb_dart.dart';

class MovieBase {
  int id;
  String posterPath;
  bool adult;
  String overview;
  DateTime releaseDate;
  List<int> genreIds;
  String originalTitle;
  String originalLanguage;
  String title;
  String backdropPath;
  num popularity;
  int voteCount;
  bool video;
  num voteAverage;

  MovieBase() {}

  MovieBase.fromJson(Map<String, dynamic> map, AssetResolver resolver) {
    id = map["id"];
    posterPath = resolver.getPosterPath(map["poster_path"]);
    adult = map["adult"];
    overview = map["overview"];
    releaseDate = DateTime.parse(map["release_date"]);
    genreIds = List.castFrom(["genre_ids"]);
    originalTitle = map["original_title"];
    originalLanguage = map["original_language"];
    title = map["title"];
    backdropPath = resolver.getBackdropPath(map["backdrop_path"]);
    popularity = map["popularity"];
    voteCount = map["vote_count"];
    video = map["video"];
    voteAverage = map["vote_average"];
  }
}
