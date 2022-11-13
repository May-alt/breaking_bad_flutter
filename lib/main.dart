
import 'package:breakingbadapi/business_logic/cubit/caracters_cubit.dart';
import 'package:breakingbadapi/data/repostory/repo_caracters.dart';
import 'package:breakingbadapi/data/services/caracter_services.dart';
import 'package:breakingbadapi/ui/screnns/caractes/caracters.dart';
import 'package:breakingbadapi/ui/screnns/episodes/episodes.dart';
import 'package:breakingbadapi/ui/screnns/navigation_screnns/layouts_screnns.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp( MyApp(),);
}

class MyApp extends StatelessWidget {

const  MyApp({Key? key, }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // BlocProvider permet de creee cubit
     return AccueilApp();
  }
}

class AccueilApp extends StatelessWidget {

  const AccueilApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Api',
      //ligth Mode

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,

        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors.black
            ),
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            titleTextStyle: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)
        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          elevation: 20.0,
          selectedItemColor: Colors.orange,

        ),

        textTheme: TextTheme(
          bodyText1: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white,letterSpacing: 0.7),
          bodyText2: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,letterSpacing: 0.7),
          headline1: TextStyle( fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black ),
          headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.blueGrey),

          //Style For Edpisode Screnns
          headline3: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
          headline4: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color:Colors.blueGrey ),

          //Setting
          button: TextStyle(color: Colors.black),
        ),
      ),

      themeMode: ThemeMode.light  ,

      debugShowCheckedModeBanner: false,
      // home:CaracterScrenns(),

      home:LayoutScreens(),

    );
  }
}




