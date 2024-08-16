import 'package:flutter/material.dart';

abstract class Transport {
  String getName();
  String getDescription();
  Widget getIcon();
}

class Car extends Transport {
  @override
  String getDescription() => 'Автомобиль';

  @override
  Widget getIcon() => const Icon(Icons.directions_car);

  @override
  String getName() => 'Это автомобилью Он ездить на дорогах';
}

class Bycicle extends Transport {
  @override
  String getDescription() => 'Велосипед';

  @override
  Widget getIcon() => const Icon(Icons.directions_bike);

  @override
  String getName() => 'Это велосипед. Он передвигается на мускульной силе.';
}
