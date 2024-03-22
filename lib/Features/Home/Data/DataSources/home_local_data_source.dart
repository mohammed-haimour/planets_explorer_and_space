import 'package:hive_flutter/hive_flutter.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';

class HomeLocalDataSource{

  List<PlanetsModel> getPlanets() {

   var box = Hive.box<PlanetsModel>(ConstantsVariables.planetsBox);
   return box.values.toList();

  }

  // - Hive_save response to local
  static void savePlanetsToLocal(List<PlanetsModel> data){
    var hiveBox = Hive.box<PlanetsModel>(ConstantsVariables.planetsBox);
    hiveBox.addAll(data);
  }

}