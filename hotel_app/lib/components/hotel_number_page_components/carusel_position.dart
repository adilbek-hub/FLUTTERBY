import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';

class CaruselPositionWidget extends StatelessWidget {
  const CaruselPositionWidget({
    Key? key,
    required this.carouselController,
    required this.currentIndex,
    required this.imageUrls,
  }) : super(key: key);

  final CarouselController carouselController;
  final int currentIndex;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 158),
        child: Container(
          height: 17,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map(
              (e) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(e.key),
                  child: Container(
                    width: currentIndex == e.key ? 7 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == e.key
                            ? AppColors.black
                            : AppColors.grey),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
