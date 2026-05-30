class CarModel{

  final String name;
  final int year;
  final String image;

  CarModel({required this.name, required this.year, required this.image});

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      name: json['name'],
      year: json['year'],
      image: json['image'],
    );
  }
}