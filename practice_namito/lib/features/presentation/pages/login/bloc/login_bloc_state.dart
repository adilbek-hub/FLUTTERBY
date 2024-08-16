part of 'login_bloc_bloc.dart';

sealed class LoginBlocState extends Equatable {
  const LoginBlocState();

  @override
  List<Object> get props => [];
}

final class LoginBlocInitial extends LoginBlocState {}

class LoginBlocLoading extends LoginBlocState {}

class LoginBlocSuccess extends LoginBlocState {}

class LoginBlocError extends LoginBlocState {
  const LoginBlocError({required this.error});
  final String error;
}
