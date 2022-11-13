import 'package:breakingbadapi/data/models/caracter_model.dart';
import 'package:flutter/material.dart';
import 'package:breakingbadapi/ui/layouts/const_widgets.dart';


class DetaillesCaractersScrenns extends StatelessWidget {
  final CharacterModel cracters;
  const DetaillesCaractersScrenns({Key? key,required this.cracters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(

      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(context),
          buildSliverList(context),
        ],
      )
    );
  }



   Widget buildSliverAppBar(context){
    return SliverAppBar(
      leading: BackButton(
        color: Colors.white,
      ),
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text("${cracters.nickname}", style:Theme.of(context).textTheme.bodyText1,),
        background: Hero(
          tag: cracters.charId,
          child: Image.network(cracters.img,fit: BoxFit.cover,),
        ),
      ),
    );
  }

  Widget buildSliverList(context){
    return SliverList(
        delegate: SliverChildListDelegate([
          Padding(
              padding:const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                ReusText(
                    data: "Nickname",
                    style: Theme.of(context).textTheme.headline1,
                    text: "${ cracters.name}",
                  styletext: Theme.of(context).textTheme.headline2,
                ),
                dividerWidget(endIndent: 220),

                ReusText(
                    data: "Status",
                    style: Theme.of(context!).textTheme.headline1,
                    text: "${ cracters.status}",
                  styletext:  Theme.of(context).textTheme.headline2,
                ),
                dividerWidget(endIndent: 250),

                ReusText(
                    data: "Birthday",
                    style: Theme.of(context!).textTheme.headline1,
                    text: "${ cracters.birthday}",
                  styletext:  Theme.of(context).textTheme.headline2,
                ),
                dividerWidget(endIndent: 230),

                ReusText(
                    data: "Occupation",
                   style: Theme.of(context!).textTheme.headline1,
                    text: "${ cracters.occupation.join(' / ')}",
                  styletext:  Theme.of(context).textTheme.headline2,),

                dividerWidget(endIndent: 200),

                ReusText(
                    data: "Appearance",
                  style: Theme.of(context!).textTheme.headline1,
                    text: "${ cracters.appearance.join(' / ')}",
                   styletext:  Theme.of(context).textTheme.headline2,),

                dividerWidget(endIndent: 200),

              ],
            ),
          ),
        ]),
    );
  }
}
