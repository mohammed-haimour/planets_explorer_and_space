import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';
import 'package:planets_explorer/Features/Home/Data/home_data.dart';
part 'planets_state.dart';

class PlanetsCubit extends Cubit<PlanetsState> {
  PlanetsCubit(this.homeData) : super(PlanetsInitial());

  final HomeData homeData;

  Future<void> getPlanets()
  async{
    emit(PlanetsLoading());
    var result = await homeData.getPlanets();

    result.fold(
            (failure) {
              emit(PlanetsFailure(msg: failure.message));
            },
            (planets) {
              emit(PlanetsSuccess(planets: planets));
            },
    );
  }
}
