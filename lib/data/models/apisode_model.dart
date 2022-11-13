import 'package:flutter/material.dart';


class EpisodeModel {
  late int episodeId;
  late String title;
  late String airDate;
  late  String season;
  late List<String> characters;
  late String episode;
  late  String series;

  EpisodeModel(
      {
        required this.episodeId,
       required this.title,
       required this.season,
        required this.airDate,
        required this.characters,
        required this.episode,
        required this.series});

  EpisodeModel.fromJson(Map<String, dynamic> json) {
    episodeId = json['episode_id'];
    title = json['title'];
    season = json['season'];
    airDate = json['air_date'];
    characters = json['characters'].cast<String>();
    episode = json['episode'];
    series = json['series'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['episode_id'] = this.episodeId;
    data['title'] = this.title;
    data['season'] = this.season;
    data['air_date'] = this.airDate;
    data['characters'] = this.characters;
    data['episode'] = this.episode;
    data['series'] = this.series;
    return data;
  }
}