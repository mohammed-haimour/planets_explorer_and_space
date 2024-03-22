import 'package:dio/dio.dart';

class PlanetsApiService{
  final Dio _dio = Dio();

  final String baseUrl =  "https://planets-info-by-newbapi.p.rapidapi.com/api/v1/";
  final Map<String , String> headers= const {
    'X-RapidAPI-Key': '6d7d1c9869msh368e07339ec7d33p1b8a4djsn0ccb59ad6aa2',
    'X-RapidAPI-Host': 'planets-info-by-newbapi.p.rapidapi.com'
  };

  PlanetsApiService();

  Future<List<dynamic>> get({required String endPoint})
  async{
    var response = await _dio.get(
      "$baseUrl$endPoint/",
      options: Options(
        headers: headers
      )
    );
    return response.data;
  }

}