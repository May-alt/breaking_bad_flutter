part of 'caracters_cubit.dart';

@immutable
abstract class CaractersState {}

class CaractersInitial extends CaractersState {}

class CaractersLoded extends CaractersState{

   final List<CharacterModel> characters;
    CaractersLoded(this.characters);
}

class CaractersErorrstate extends CaractersState{
  final String error;
  CaractersErorrstate(this.error);

}
//Episodes

class EpisodeLodedState extends CaractersState{
   final List<EpisodeModel> episodes;
   EpisodeLodedState(this.episodes);
}

class EpisodesErorrState extends CaractersState{
  final String error;
  EpisodesErorrState(this.error);
}


//BottomNavBarState
 class CaractersBottomNavState extends CaractersState{}


//State Form change Mode App

class changeModeAppState extends CaractersState{}