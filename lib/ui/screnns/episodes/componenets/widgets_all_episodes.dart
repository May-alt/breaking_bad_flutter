import 'package:breakingbadapi/data/models/apisode_model.dart';
import 'package:breakingbadapi/ui/layouts/const_widgets.dart';
import 'package:flutter/material.dart';

class AllEpisodesItems extends StatelessWidget {
  final EpisodeModel episodModel;

  const AllEpisodesItems({Key? key, required this.episodModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
          // color: Colors.black,
          // color: Colors.white,
          decoration: BoxDecoration(border: Border.all(color: Colors.orange)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                ReusRichText(
                  texttitle: "title : ",
                  styletexttitle: Theme.of(context).textTheme.headline3,
                  styletext: Theme.of(context).textTheme.headline4,
                  text: episodModel.title,

                ),

                ReusRichText(
                    texttitle: "Season : ",
                    styletexttitle: Theme.of(context).textTheme.headline3,
                    styletext: Theme.of(context).textTheme.headline4,
                    text: episodModel.season),

                ReusRichText(
                  texttitle: "Episode : ",
                  styletexttitle: Theme.of(context).textTheme.headline3,
                  styletext: Theme.of(context).textTheme.headline4,
                  text: episodModel.episode,
                ),
                ReusRichText(
                  texttitle: "Series : ",
                  styletexttitle: Theme.of(context).textTheme.headline3,
                  styletext: Theme.of(context).textTheme.headline4,
                  text: episodModel.series,
                ),
                ReusRichText(
                  texttitle: "Date : ",
                  styletexttitle: Theme.of(context).textTheme.headline3,
                  styletext: Theme.of(context).textTheme.headline4,
                  text: episodModel.airDate,
                ),
                ReusRichText(
                  texttitle: "Characters : ",
                  styletexttitle: Theme.of(context).textTheme.headline3,
                  styletext: Theme.of(context).textTheme.headline4,
                  text: episodModel.characters.join(' / '),
                ),

              ],
            ),
          )),
    );
  }
}
