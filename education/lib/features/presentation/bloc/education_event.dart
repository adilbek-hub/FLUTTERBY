part of 'education_bloc.dart';

sealed class EducationEvent extends Equatable {
  const EducationEvent();

  @override
  List<Object> get props => [];
}

final class FetchDataEvent1 extends EducationEvent {}

final class FetchDataEvent2 extends EducationEvent {}

final class FetchDataEvent3 extends EducationEvent {}

final class FetchDataEvent4 extends EducationEvent {}

final class FetchDataEvent5 extends EducationEvent {}

final class FetchDataEvent6 extends EducationEvent {}

final class FetchDataEuropeCapitalTest extends EducationEvent {}

final class FetchDataUsaTest extends EducationEvent {}

final class FetchDataAsiaTest extends EducationEvent {}

final class FetchDataWorldCapitalsTest extends EducationEvent {}

final class FetchDataManAndAnimalTest extends EducationEvent {}

final class FetchKletkaTest extends EducationEvent {}

final class FetchNervSistemasyTest extends EducationEvent {}

final class FetchMeeTest extends EducationEvent {}

final class FetchNemisKorolduguTest extends EducationEvent {}

final class FetchRimTest extends EducationEvent {}

final class FetchBayirkyGermandarTest extends EducationEvent {}

final class FetchItaliaVIXTest extends EducationEvent {}

final class PersonalComputerTest extends EducationEvent {}

final class FetchComputerdikTarmaktarTest extends EducationEvent {}

final class FetchSistemakykTarmaktarTest extends EducationEvent {}
