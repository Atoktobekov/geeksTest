import 'package:flutter/material.dart';
import 'package:geeks_test/features/auto_list/presentation/provider/cars_provider.dart';
import 'package:geeks_test/features/auto_list/presentation/widgets/car_list_tile.dart';

class CarsScreen extends StatefulWidget {
  const CarsScreen({super.key});

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarsProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TestRecycle'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        itemCount: carProvider.carList.length,
        separatorBuilder: (_, _) => Divider(),
        itemBuilder: (_, index) => CarListTile(),
      ),
    )
  }
}