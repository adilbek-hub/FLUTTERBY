part of 'subject_bloc.dart';

sealed class SubjectEvent extends Equatable {
  const SubjectEvent();

  @override
  List<Object> get props => [];
}

class FetchDataEvent1 extends SubjectEvent {}

class FetchDataEvent2 extends SubjectEvent {}
