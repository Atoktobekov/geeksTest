import 'package:geeks_test/features/auto_list/data/models/car_model.dart';
import 'package:geeks_test/features/auto_list/domain/enitities/car_entity.dart';

class CarListModel {
  final List<CarEntity> carsList;

  CarListModel({required this.carsList});

  factory CarListModel.fromJson(List<dynamic> json) {
      
    }
  }
