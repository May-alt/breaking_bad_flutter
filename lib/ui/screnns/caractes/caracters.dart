import 'package:breakingbadapi/business_logic/cubit/caracters_cubit.dart';
import 'package:breakingbadapi/data/models/caracter_model.dart';
import 'package:breakingbadapi/data/repostory/repo_caracters.dart';
import 'package:breakingbadapi/data/services/caracter_services.dart';
import 'package:breakingbadapi/ui/screnns/caractes/components/widget_all_carcters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CaracterScrenns extends StatefulWidget {
  const CaracterScrenns({
    Key? key,
  }) : super(key: key);

  @override
  State<CaracterScrenns> createState() => _CaracterScrennsState();
}

class _CaracterScrennsState extends State<CaracterScrenns> {
  CaractersCubit cubit = CaractersCubit(CharacterReposotory(CharacterService()));

  //ajouter liste of all caracter dans var cuibt
  late List<CharacterModel> allCaracters;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CaractersCubit>(context).getAllCharacter();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: BuildBlocWidgets(),
      ),
    );
  }

  Widget BuildBlocWidgets(){
    return BlocConsumer<CaractersCubit, CaractersState>(
      listener: (context, state) {},
      builder: (context, state) {

        if(state is CaractersLoded){
          allCaracters = (state).characters;
          return BodyAllCaracters();
        } else{
          return Center(
            child:  CircularProgressIndicator(color: Colors.deepOrangeAccent),
          );
        }
      },
    );
  }


  Widget BodyAllCaracters() {
    return GridView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: allCaracters.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 3),
        itemBuilder: (context, index) {
          return WidgetAllCarcters(
            caracter:allCaracters[index],
          );
          // return Text("add");
        });




  }


}


