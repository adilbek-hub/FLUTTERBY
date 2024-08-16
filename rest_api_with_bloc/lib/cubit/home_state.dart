part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({this.status = Fetchstatus.initial, this.users});
  @override
  List<Object> get props => [status];
  //2
  final Fetchstatus status;
  //3
  final List<User>? users;
}

//1
enum Fetchstatus { initial, loading, success, error }
