import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geeks_test/features/auto_list/domain/enitities/car_entity.dart';
import 'package:geeks_test/features/auto_list/domain/repository/car_repository.dart';
import 'package:geeks_test/features/auto_list/domain/usecases/get_cars_usecase.dart';


enum CarStatus { initial, loading, loaded, error }
class CarsProvider extends ChangeNotifier {
final GetCarsUseCase _getCarsUseCase;
final CarRepository _carRepository;

  CarsProvider({required GetCarsUseCase getCarsUseCase, required CarRepository carRepository}) : _getCarsUseCase = getCarsUseCase, _carRepository = carRepository;


  CarStatus _status = CarStatus.initial;
  List<CarEntity> _carList = [];

  CarStatus get status => _status;
  List<CarEntity> get carList => _carList;

  Future<void> fetchCars() async {
    try {
      final cars = await _getCarsUseCase();
      _carList = cars;
      _status = CarStatus.loaded;
      notifyListeners();

  }catch (e) {
      log("There was an error while fetching cars!");
      log(e.toString());
      _status = CarStatus.error;
      notifyListeners();
    }
    }
}