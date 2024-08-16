import 'package:flutter/material.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SliderTheme(
          data: SliderThemeData(
            thumbShape: SliderComponentShape.noThumb,
            trackHeight: 3,
            activeTrackColor: Colors.red,
            inactiveTrackColor: Colors.black,
            activeTickMarkColor: Colors.blue,
            trackShape: const RectangularSliderTrackShape(),
          ),
          child: Slider(
              min: 0, max: 10, value: value.toDouble(), onChanged: (value) {})),
    );
  }
}
