part of 'subject_bloc.dart';

sealed class SubjectState extends Equatable {
  const SubjectState();

  @override
  List<Object> get props => [];
}

final class SubjectLoading extends SubjectState {}

final class BiologySuccess extends SubjectState {
  const BiologySuccess({required this.biologyModel});
  final List<BiologyTopicsModel>? biologyModel;
}

final class InformaticaSuccess extends SubjectState {
  const InformaticaSuccess({required this.informaticaToicsModel});
  final InformaticaTopics informaticaToicsModel;
}

final class SubjectError extends SubjectState {
  const SubjectError({required this.error});
  final String error;
}
