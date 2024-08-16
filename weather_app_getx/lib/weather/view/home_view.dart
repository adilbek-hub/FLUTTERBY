import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weather_app_getx/constants/api_const.dart';
import 'package:weather_app_getx/constants/app_colors.dart';
import 'package:weather_app_getx/constants/app_text.dart';
import 'package:weather_app_getx/constants/app_text_style.dart';
import 'package:weather_app_getx/weather/controller/weather_controller.dart';
import '../../components/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final WeatherCtrl ctrl = Get.put(WeatherCtrl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text(AppText.appBarTitle, style: AppTextStyle.appBar),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/weather.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  icon: Icons.near_me,
                  onPressed: () async {
                    await ctrl.weatherLocation();
                  },
                ),
                CustomIconButton(
                  icon: Icons.location_city,
                  onPressed: () {
                    ctrl.showBottom(context);
                  },
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                Obx(
                  () => Text(
                      '${(ctrl.weather!.value.temp - 274.15).floorToDouble()}',
                      style: AppTextStyle.body1),
                ),
                Image.network(
                  ApiConst.getIcon(ctrl.weather!.value.icon, 4),
                  height: 160,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FittedBox(
                    child: Obx(
                      () => Text(
                        // "You'll need and".replaceAll(' ', '\n'),
                        ctrl.weather!.value.description.replaceAll(' ', '\n'),
                        textAlign: TextAlign.right,
                        style: AppTextStyle.body2((90)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: FittedBox(
                child: Obx(
                  () => Text(
                    ctrl.weather!.value.city,
                    textAlign: TextAlign.right,
                    style: AppTextStyle.body1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
