import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_scroll/text_scroll.dart';
import '../bloc/hotel_bloc.dart';
import 'package:hotel_app/components/components_export.dart';
import 'package:hotel_app/constants/constants_export.dart';

class HotelNumber extends StatefulWidget {
  const HotelNumber({Key? key}) : super(key: key);

  @override
  State<HotelNumber> createState() => _HotelNumberState();
}

class _HotelNumberState extends State<HotelNumber> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          if (state is HotelSuccess) {
            return Scaffold(
              backgroundColor: const Color(0xffF6F6F9),
              appBar: AppBar(
                toolbarHeight: 100,
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                title: Center(
                  child: TextScroll(
                    state.hotelNumberModel.rooms[0].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    AppSize.height10,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: CarouselSlider(
                                    items: state
                                        .hotelNumberModel.rooms[0].imageUrls
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
                                CaruselPositionWidget(
                                  carouselController: carouselController,
                                  currentIndex: currentIndex,
                                  imageUrls: state.hotelModel.imageUrls,
                                ),
                              ],
                            ),
                            AppSize.height8,
                            Text(
                              state.hotelNumberModel.rooms[0].name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            LaunchAndConditioner(
                              peculiarities0: state
                                  .hotelNumberModel.rooms[0].peculiarities[0],
                              peculiarities1: state
                                  .hotelNumberModel.rooms[0].peculiarities[1],
                            ),
                            AppSize.height13,
                            const AboutNumberContainer(),
                            AppSize.height16,
                            AboutSumRow(
                              price:
                                  '${state.hotelNumberModel.rooms[0].price} ₽ ',
                              pricePer:
                                  state.hotelNumberModel.rooms[0].pricePer,
                            ),
                            AppSize.height19,
                            const AboutCustomNavigator(),
                          ],
                        ),
                      ),
                    ),
                    AppSize.height10,
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                CarouselSlider(
                                  items:
                                      state.hotelNumberModel.rooms[1].imageUrls
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
                                CaruselPositionWidget(
                                  carouselController: carouselController,
                                  currentIndex: currentIndex,
                                  imageUrls: state.hotelModel.imageUrls,
                                ),
                              ],
                            ),
                            AppSize.height8,
                            Text(
                              state.hotelNumberModel.rooms[1].name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            LaunchAndConditioner(
                              peculiarities0: state
                                  .hotelNumberModel.rooms[1].peculiarities[0],
                              peculiarities1: state
                                  .hotelNumberModel.rooms[1].peculiarities[1],
                            ),
                            AppSize.height13,
                            const AboutNumberContainer(),
                            AppSize.height16,
                            Row(
                              children: [
                                Text(
                                  '${state.hotelNumberModel.rooms[1].price} ₽ ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  state.hotelNumberModel.rooms[1].pricePer,
                                  style: const TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            AppSize.height19,
                            const ChooseNumberButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return throw (AppTexts.error);
          }
        },
      ),
    );
  }
}
