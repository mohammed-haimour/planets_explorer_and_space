import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planets_explorer/Core/Errors/failure.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_model.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_result_model.dart';
import 'package:planets_explorer/Features/Register/Data/DataSources/register_local_data_source.dart';
import 'package:planets_explorer/Features/Register/Data/DataSources/register_remote_data_source.dart';

class RegisterData{
  final RegisterRemoteDataSource registerRemoteDataSource;
  final RegisterLocalDataSource registerLocalDataSource;

  RegisterData({required this.registerRemoteDataSource, required this.registerLocalDataSource});

  Future<Either<Failure , CreateUserResultModel>> createUser(CreateUserModel createUserModel)
  async{

    try{

      CreateUserResultModel ? user ;

      user = registerLocalDataSource.getUser();

      if(user.message != null){
        return right(user);
      }

      user = await registerRemoteDataSource.createUser(createUserModel: createUserModel);

      return right(user);

    }on Exception catch(error){
      if(error is DioException){
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }


  }


}