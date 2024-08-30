import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_card.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';
import 'package:lalafolike/features/presentation/pages/profile/bloc/profilebanner_bloc.dart';
import 'package:lalafolike/features/presentation/pages/profile/model/advert.dart';
import 'package:shimmer/shimmer.dart';

class ProfileBanner extends StatelessWidget {
  ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBannerBloc(),
      child: BlocBuilder<ProfileBannerBloc, ProfileBannerState>(
        builder: (context, state) {
          if (state is InitialProfileBannerState) {
            return _buildShimmerEffect();
          } else if (state is LoadingProfileBannerState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedProfileBannerState) {
            final advert = state.advert;
            return  CustomCard(
          backgroundColor: const Color.fromARGB(255, 18, 128, 218),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 66, 66),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      advert.newTag,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
              AppText(title: advert.title, textType: TextType.bigheader),
              AppText(
                textAlign: TextAlign.center,
                color: Colors.white,
                title: advert.description,
                textType: TextType.body,
              ),
              const SizedBox(height: 10),
              CustomTextContainer(
                borderRadius: 25,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                text: advert.button,
                colorText: Colors.black,
              ),
            ],
          ),
        );
          } else if (state is ErrorProfileBannerState) {
            return Center(child: Text('Something went wrong: ${state.message}'));
          } else {
            throw Exception('Unexpected state: $state');
          }
        },
      ),
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: CustomCard(
        backgroundColor: Colors.blue,
        content: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    height: 78,
                    width: 50,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 20,
              width: double.infinity,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Container(
              height: 12,
              width: double.infinity,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Container(
              height: 20,
              width: 100,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
