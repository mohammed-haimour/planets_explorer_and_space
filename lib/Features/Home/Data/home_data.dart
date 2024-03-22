import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planets_explorer/Core/Errors/failure.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';
import 'package:planets_explorer/Features/Home/Data/DataSources/home_local_data_source.dart';
import 'package:planets_explorer/Features/Home/Data/DataSources/home_remote_data_source.dart';

class HomeData{

  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeData({ required this.homeRemoteDataSource, required this.homeLocalDataSource });

  Future<Either<Failure , List<PlanetsModel>>> getPlanets()
  async{
    try {
      List<PlanetsModel> planets;
      planets = homeLocalDataSource.getPlanets();
      if(planets.isNotEmpty){
        return right(planets);
      }
      planets = await homeRemoteDataSource.getPlanets();
      return right(planets);

    }on Exception catch(error){

      if(error is DioException){
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }

  }

}