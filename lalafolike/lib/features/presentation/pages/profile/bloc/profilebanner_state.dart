part of 'profilebanner_bloc.dart';
abstract class ProfileBannerState extends Equatable {
  const ProfileBannerState();

  @override
  List<Object> get props => [];
}

class InitialProfileBannerState extends ProfileBannerState {}

class LoadingProfileBannerState extends ProfileBannerState {}

class LoadedProfileBannerState extends ProfileBannerState {
  final Advert advert;

  const LoadedProfileBannerState(this.advert);
}

class ErrorProfileBannerState extends ProfileBannerState {
  final String message;

  const ErrorProfileBannerState(this.message);
}