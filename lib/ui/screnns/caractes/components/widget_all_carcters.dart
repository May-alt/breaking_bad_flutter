
import 'package:breakingbadapi/data/models/caracter_model.dart';
import 'package:breakingbadapi/ui/screnns/caractes/detailles_caracters_widgets.dart';
import 'package:flutter/material.dart';


class WidgetAllCarcters extends StatelessWidget {
  final CharacterModel caracter;
  const WidgetAllCarcters({Key? key,required this.caracter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       Navigator.of(context).push(
           PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
             return DetaillesCaractersScrenns(cracters: caracter);
           },)
       );
      },
      child: Hero(
          tag: caracter.charId,
          child: GridTile(
            child: caracter.img.isNotEmpty ?
            FadeInImage.assetNetwork(
                width: double.infinity,
                height: double.infinity,
                placeholder: "assets/images/loading.gif",
                image: caracter.img
            ):
            Image.asset("assets/images/loading.gif",fit: BoxFit.cover,),


            footer: Container(
              width: double.infinity,
              color: Colors.black45,
              alignment: Alignment.center,
              child: Text(caracter.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
      )
    );
  }
}
