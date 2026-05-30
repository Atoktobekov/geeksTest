import 'package:geeks_test/features/auto_list/domain/enitities/car_entity.dart';
import 'package:geeks_test/features/auto_list/domain/repository/car_repository.dart';

class GetCarsUseCase{
 final CarRepository _carRepository;

 const GetCarsUseCase(this._carRepository);

 Future<List<CarEntity>> call() async{
   return _carRepository.getCars();
 }
}