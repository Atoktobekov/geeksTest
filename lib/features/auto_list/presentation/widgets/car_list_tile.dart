import 'package:flutter/material.dart';
import 'package:geeks_test/features/auto_list/domain/enitities/car_entity.dart';

class CarListTile extends StatelessWidget {
  final CarEntity car;

  const CarListTile({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.network(
            'https://cdn.jsdelivr.net/gh/Atoktobekov/carPhotos@main/${car
                .image}.jpg'),
        title: Text(car.name),
        subtitle: Text(car.year.toString()));
  }
}