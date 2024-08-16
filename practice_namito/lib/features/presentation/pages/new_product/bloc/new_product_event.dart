import 'package:equatable/equatable.dart';

sealed class NewProductsEvent extends Equatable {
  const NewProductsEvent();

  @override
  List<Object> get props => [];
}

class NewProductsInitialEvent extends NewProductsEvent {
  const NewProductsInitialEvent();

  @override
  List<Object> get props => [];
}
