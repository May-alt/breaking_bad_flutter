

import 'package:breakingbadapi/ui/layouts/constants.dart';
import 'package:dio/dio.dart';

class CharacterService {

   late Dio dio;

  CharacterService(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20*1000,
      receiveTimeout: 20*1000,
    );
    dio = new Dio(options);
  }


  //1ere web services Call
   // njib list of model from net

  Future<List<dynamic>> getAllCharacter() async {
   try{
     Response response = await dio.get('characters');
     print(response.data.toString());
     return response.data;
   }catch(e){
     print(e.toString());
     return [];
   }
  }

//2eme calf to  web services fot get Data of Episode

Future<List<dynamic>> getAllEpisode() async {
    try{
      Response rep = await dio.get('episodes');
      print(rep.data.toString());
      return rep.data;
    }catch(e){
      print(e.toString());
      return [];
    }
}
  
}