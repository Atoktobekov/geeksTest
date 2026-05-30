import 'package:geeks_test/features/auto_list/domain/enitities/car_entity.dart';

abstract class CarRepository{
  List<CarEntity> getCars();
}