import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/planets_api_service.dart';
import 'package:planets_explorer/Features/Home/Data/DataSources/home_local_data_source.dart';

class HomeRemoteDataSource{
  final PlanetsApiService planetsApiService;

  HomeRemoteDataSource(this.planetsApiService);

  Future<List<PlanetsModel>> getPlanets()
  async{
    var response = await planetsApiService.get(endPoint: "planets");

    List<PlanetsModel> data = getPlanetsList(response);

    HomeLocalDataSource.savePlanetsToLocal(data);

    return data;
  }

  List<PlanetsModel> getPlanetsList(List<dynamic> data){
    List<PlanetsModel> planets = [];

    for(var planet in data){
      planets.add(PlanetsModel.fromJson(planet));
    }

    return planets;
  }
}