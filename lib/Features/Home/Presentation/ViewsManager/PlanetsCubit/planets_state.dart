part of 'planets_cubit.dart';

@immutable
abstract class PlanetsState {}

class PlanetsInitial extends PlanetsState {}

class PlanetsLoading extends PlanetsState {}

class PlanetsSuccess extends PlanetsState {
  final List<PlanetsModel> planets;
  PlanetsSuccess({required this.planets});
}

class PlanetsFailure extends PlanetsState {
  final String msg;
  PlanetsFailure({required this.msg});
}
