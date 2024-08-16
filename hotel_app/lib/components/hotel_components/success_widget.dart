import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/constants/constants_export.dart';
import '../../bloc/hotel_bloc.dart';
import 'button_area.dart';
import 'like_container.dart';
import 'white_container.dart';

class SuccessWidget extends StatefulWidget {
  const SuccessWidget({Key? key}) : super(key: key);

  @override
  State<SuccessWidget> createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 19),
                        const Center(
                          child: Text(
                            AppTexts.hotel,
                            style: AppTextStyles.hotelStyle,
                          ),
                        ),
                        AppSize.height16,
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CarouselSlider(
                                items: state.hotelModel.imageUrls
                                    .map(
                                      (e) => SizedBox(
                                        width: width,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            e,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                carouselController: carouselController,
                                options: CarouselOptions(
                                    scrollPhysics:
                                        const BouncingScrollPhysics(),
                                    autoPlay: true,
                                    aspectRatio: 2,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        currentIndex = index;
                                      });
                                    }),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 158),
                                child: Container(
                                  height: 17,
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: state.hotelModel.imageUrls
                                        .asMap()
                                        .entries
                                        .map(
                                      (e) {
                                        return GestureDetector(
                                          onTap: () => carouselController
                                              .animateToPage(e.key),
                                          child: Container(
                                            width:
                                                currentIndex == e.key ? 7 : 7,
                                            height: 7.0,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 3),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: currentIndex == e.key
                                                    ? Colors.black
                                                    : Colors.grey),
                                          ),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const LikeContainer(),
                        const SizedBox(height: 8),
                        Text(
                          state.hotelModel.name,
                          style: AppTextStyles.hotelMdelNameStyle,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          state.hotelModel.adress,
                          style: AppTextStyles.hotelMdelAddressStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              '${AppTexts.ot} ${state.hotelModel.minimalPrice}${AppTexts.rubley}',
                              style: AppTextStyles.hotelMdelMinimalPriceStyle,
                            ),
                            AppSize.width8,
                            Text(
                              state.hotelModel.priceForIt,
                              style: AppTextStyles.tStyle4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                AppSize.height10,
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppSize.height19,
                        const Text(
                          AppTexts.aboutHotel,
                          style: AppTextStyles.tStyle1,
                        ),
                        AppSize.height21,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              AppTexts.line,
                              style: AppTextStyles.tStyle4,
                            ),
                            Text(
                              state.hotelModel.aboutTheHotel.peculiarities[2],
                              style: AppTextStyles.tStyle4,
                            ),
                            AppSize.width14,
                          ],
                        ),
                        AppSize.height21,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              state.hotelModel.aboutTheHotel.peculiarities[3],
                              style: AppTextStyles.tStyle4,
                            ),
                            Text(
                              state.hotelModel.aboutTheHotel.peculiarities[1],
                              style: AppTextStyles.tStyle4,
                            ),
                            AppSize.width14,
                          ],
                        ),
                        AppSize.height17,
                        Text(
                          state.hotelModel.aboutTheHotel.description,
                          style: AppTextStyles.aboutTheHotelDescriptionStyle,
                        ),
                        AppSize.height16,
                        const WhiteContainer()
                      ],
                    ),
                  ),
                ),
                AppSize.height10,
                const ButtonArea(),
              ],
            ),
          );
        } else {
          throw (AppTexts.error);
        }
      },
    );
  }
}
