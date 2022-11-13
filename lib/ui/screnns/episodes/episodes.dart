import 'package:breakingbadapi/business_logic/cubit/caracters_cubit.dart';
import 'package:breakingbadapi/data/models/apisode_model.dart';
import 'package:breakingbadapi/ui/screnns/episodes/componenets/widgets_all_episodes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodesScrenns extends StatefulWidget {
  const EpisodesScrenns({Key? key}) : super(key: key);

  @override
  State<EpisodesScrenns> createState() => _EpisodesScrennsState();
}

class _EpisodesScrennsState extends State<EpisodesScrenns> {
  late List<EpisodeModel> allEpisodes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CaractersCubit>(context).getAllEpisode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BuildBlocEpisodeWidgets(),
    );
  }

  Widget BuildBlocEpisodeWidgets() {
    return BlocConsumer<CaractersCubit, CaractersState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is EpisodeLodedState) {
          allEpisodes = (state).episodes;
          return BuildBodyWidgets();
        } else {
          return Center(
            child: CircularProgressIndicator(color: Colors.deepOrangeAccent),
          );
        }
      },
    );
  }

  Widget BuildBodyWidgets() {
    return ListView.builder(
      itemCount: allEpisodes.length,
      itemBuilder: (conttext, index) {
        return AllEpisodesItems(
          episodModel: allEpisodes[index],
        );
      },
    );
  }
}
