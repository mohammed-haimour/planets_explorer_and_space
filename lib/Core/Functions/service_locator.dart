import 'package:get_it/get_it.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/planets_api_service.dart';
import 'package:planets_explorer/Features/Home/Data/DataSources/home_local_data_source.dart';
import 'package:planets_explorer/Features/Home/Data/DataSources/home_remote_data_source.dart';
import 'package:planets_explorer/Features/Home/Data/home_data.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/register_api_service.dart';
import 'package:planets_explorer/Features/Register/Data/DataSources/register_local_data_source.dart';
import 'package:planets_explorer/Features/Register/Data/DataSources/register_remote_data_source.dart';
import 'package:planets_explorer/Features/Register/Data/register_data.dart';

final getIt = GetIt.instance;

void setUpGetIt(){
  getIt.registerSingleton<HomeData>(HomeData(homeRemoteDataSource: HomeRemoteDataSource(PlanetsApiService()),homeLocalDataSource: HomeLocalDataSource()));
  getIt.registerSingleton<RegisterData>(RegisterData(registerRemoteDataSource: RegisterRemoteDataSource(registerApiService: RegisterApiService()), registerLocalDataSource: RegisterLocalDataSource()));
  // to use -->
  // getIt.get<Example>();
}

