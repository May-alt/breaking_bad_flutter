
import 'package:breakingbadapi/data/models/apisode_model.dart';
import 'package:breakingbadapi/data/models/caracter_model.dart';
import 'package:breakingbadapi/data/services/caracter_services.dart';

class CharacterReposotory {

  final CharacterService characterservice ;

  CharacterReposotory(this.characterservice);


  //functio pour prendre la liste des caracter depuis rep file
  Future<List<CharacterModel>> getAllCharacter() async {
    final characters = await characterservice.getAllCharacter();
   //json eli aj3tli
    return characters.map((character) => CharacterModel.fromJson(character)).toList();
  }

  //function pour prendre la liste des Episode depuis services file and mettre en forme de json

Future<List<EpisodeModel>> getAllEpisode() async{
    final episodes = await characterservice.getAllEpisode();
    // mettre la liste et transfier en de forme Json
    return episodes.map((episode) => EpisodeModel.fromJson(episode)).toList();
}
}