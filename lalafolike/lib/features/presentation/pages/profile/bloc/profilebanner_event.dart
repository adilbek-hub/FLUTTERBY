part of 'profilebanner_bloc.dart'; 
abstract class ProfileBannerEvent extends Equatable {
  const ProfileBannerEvent();

  @override
  List<Object> get props => [];
}

class LoadAdvert extends ProfileBannerEvent {}
