import 'package:breakingbadapi/business_logic/cubit/caracters_cubit.dart';
import 'package:breakingbadapi/data/models/caracter_model.dart';
import 'package:breakingbadapi/data/repostory/repo_caracters.dart';
import 'package:breakingbadapi/data/services/caracter_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreens extends StatefulWidget {
  const LayoutScreens({Key? key}) : super(key: key);

  @override
  State<LayoutScreens> createState() => _LayoutScreensState();
}

class _LayoutScreensState extends State<LayoutScreens> {

  CaractersCubit caracterCubit = CaractersCubit(CharacterReposotory(CharacterService()));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => caracterCubit,

        child: BlocConsumer<CaractersCubit, CaractersState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(

              appBar: AppBar(
                title: Text("breakingbadapi"),
              ),


              body: caracterCubit.Screnns[caracterCubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: caracterCubit.currentIndex,
                items: caracterCubit.bottomItems,
                onTap: (int index) {
                  caracterCubit.changeScreenIndex(index);
                },
              ),
            );
          },
        ));
  }
}
