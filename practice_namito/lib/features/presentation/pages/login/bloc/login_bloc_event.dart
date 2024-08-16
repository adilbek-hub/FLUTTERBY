part of 'login_bloc_bloc.dart';

sealed class LoginBlocEvent extends Equatable {
  const LoginBlocEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends LoginBlocEvent {
  const LoginEvent({required this.phoneNumber});
  final String phoneNumber;
  @override
  List<Object> get props => [phoneNumber];
}
