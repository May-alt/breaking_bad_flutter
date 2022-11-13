import 'package:breakingbadapi/data/models/apisode_model.dart';
import 'package:breakingbadapi/data/models/caracter_model.dart';
import 'package:breakingbadapi/data/repostory/repo_caracters.dart';
import 'package:breakingbadapi/ui/screnns/caractes/caracters.dart';
import 'package:breakingbadapi/ui/screnns/episodes/episodes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'caracters_state.dart';

class CaractersCubit extends Cubit<CaractersState> {
  final CharacterReposotory characterreposotory;

  List<CharacterModel> charactermodel = [];
  //for Episode
  List<EpisodeModel> episodesmodel = [];

  CaractersCubit(this.characterreposotory) : super(CaractersInitial());

  static CaractersCubit get(context) => BlocProvider.of(context);

  /********************************* Function fetch data to server For Caracters Section ************************************/
  // resevoire les donnes depuis data(from reop)
  //fetch data from repo fil
  List<CharacterModel> getAllCharacter() {
    characterreposotory.getAllCharacter().then((allCaracter) {
      emit(CaractersLoded(allCaracter));
      charactermodel = allCaracter;
      // return charactermodel;
    });
    return charactermodel;
 }
  /********************************* Function fetch data to server For Episode Section ************************************/

  List<EpisodeModel> getAllEpisode() {
    characterreposotory.getAllEpisode().then((allEpisode) {
      emit(EpisodeLodedState(allEpisode));
      episodesmodel = allEpisode;
    });
    return episodesmodel;
  }

  /****************Function of BottomNavigationBar Items Change bettewns Screens********************/

  int currentIndex = 0;

  void changeScreenIndex(int index) {
    currentIndex = index;
    emit(CaractersBottomNavState());
  }

//list Of BottomNavigationBar
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Caracters"),
    BottomNavigationBarItem(
        icon: Icon(Icons.telegram_outlined), label: "episodes"),

  ];

//List Of Screens

  List<Widget> Screnns = [
    CaracterScrenns(),
    EpisodesScrenns(),
  ];



}
