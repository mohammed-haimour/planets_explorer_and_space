import 'package:dio/dio.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_model.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/log_in_user_model.dart';

class RegisterApiService{

  final Dio _dio = Dio() ;

  final String baseUrl =  "https://student.valuxapps.com/api/";

  final Map<String , String> headers= const {
    "lang": "en",
    "Content-Type": "application/json"
  };

  Future<Map<String,dynamic>> postToCreateUser({required CreateUserModel createUserModel})
  async{
    var response = await _dio.post(
        "${baseUrl}register",
        data: {
          "name": createUserModel.name,
          "email": createUserModel.email,
          "password": createUserModel.password,
          "phone": createUserModel.phone,
        },
        options: Options(
            headers: headers
        )
    );
    return response.data;
  }

  Future<Map<String,dynamic>> getToLogin({required LogInUserModel logInUserModel})
  async{
    var response = await _dio.post(
        "$baseUrl/login",
        data: {
          "email": logInUserModel.email,
          "password": logInUserModel.password,
        },
        options: Options(
            headers: headers
        )
    );
    return response.data;
  }
}