import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lalafolike/features/presentation/pages/profile/model/advert.dart';

part 'profilebanner_event.dart';
part 'profilebanner_state.dart';

class ProfileBannerBloc extends Bloc<ProfileBannerEvent, ProfileBannerState> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  ProfileBannerBloc() : super(InitialProfileBannerState()) {
    on<LoadAdvert>((event, emit) async {
      emit(LoadingProfileBannerState());
      try {
        final docSnapshot = await firestore
            .collection('Adverts')
            .doc('QmI6qePI7huZzHXCCaDS')
            .get();
        if (!docSnapshot.exists) {
          emit(const ErrorProfileBannerState('No data found'));
          return;
        }
        final advert = Advert.fromDocument(docSnapshot);
        emit(LoadedProfileBannerState(advert));
      } catch (error) {
        emit(ErrorProfileBannerState(error.toString()));
      }
    });
  }
}
