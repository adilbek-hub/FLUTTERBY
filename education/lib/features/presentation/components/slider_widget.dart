import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.max,
    required this.valueIndex,
  });

  final double max;
  final double valueIndex;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
          thumbShape: SliderComponentShape.noThumb,
          trackHeight: 3,
          activeTrackColor: Colors.red,
          inactiveTrackColor: Colors.black,
          activeTickMarkColor: Colors.blue,
          trackShape: const RectangularSliderTrackShape()),
      child: Slider(
        min: 0,
        max: max,
        value: valueIndex,
        onChanged: (value) {},
      ),
    );
  }
}
