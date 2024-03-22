import 'package:hive_flutter/hive_flutter.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_result_model.dart';

class RegisterLocalDataSource{

  CreateUserResultModel getUser(){
    var hiveBox = Hive.box<CreateUserResultModel>(ConstantsVariables.userBox);
    return hiveBox.values.first;
  }

  static void saveUserToLocal(CreateUserResultModel user){
    var hiveBox = Hive.box<CreateUserResultModel>(ConstantsVariables.userBox);
    hiveBox.add(user);
  }


}