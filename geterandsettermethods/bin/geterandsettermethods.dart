import 'dart:convert';

void main() {
  var car = Vehicle(
      make: 'Honda',
      model: 'Civic',
      manufactureYear: 2010,
      color: 'red',
      vehicleAge: 0);
  print(car.make); // output - Honda
  print(car.model); // output - Civic
  car.age = 2019;
  print(car.age); // output - 9
}

class Vehicle {
  String make;
  String model;
  int manufactureYear;
  int vehicleAge;
  String color;

  Map<String, dynamic> get map {
    return {
      'make': make,
      'model': model,
      'manufactureYear': manufactureYear,
      'color': color,
    };
  }

  int get age {
    return DateTime.now().year - manufactureYear;
  }

  set age(int currentYear) {
    vehicleAge = currentYear - manufactureYear;
  }

  Vehicle({
    required this.make,
    required this.model,
    required this.manufactureYear,
    required this.vehicleAge,
    required this.color,
  });

  Vehicle copyWith({
    String? make,
    String? model,
    int? manufactureYear,
    int? vehicleAge,
    String? color,
  }) {
    return Vehicle(
      make: make ?? this.make,
      model: model ?? this.model,
      manufactureYear: manufactureYear ?? this.manufactureYear,
      vehicleAge: vehicleAge ?? this.vehicleAge,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'make': make,
      'model': model,
      'manufactureYear': manufactureYear,
      'vehicleAge': vehicleAge,
      'color': color,
    };
  }

  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      make: map['make'],
      model: map['model'],
      manufactureYear: map['manufactureYear'],
      vehicleAge: map['vehicleAge'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Vehicle.fromJson(String source) =>
      Vehicle.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vehicle(make: $make, model: $model, manufactureYear: $manufactureYear, vehicleAge: $vehicleAge, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicle &&
        other.make == make &&
        other.model == model &&
        other.manufactureYear == manufactureYear &&
        other.vehicleAge == vehicleAge &&
        other.color == color;
  }

  @override
  int get hashCode {
    return make.hashCode ^
        model.hashCode ^
        manufactureYear.hashCode ^
        vehicleAge.hashCode ^
        color.hashCode;
  }
}
