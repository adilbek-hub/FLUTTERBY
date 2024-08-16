import 'package:education/features/data/model/biology_model.dart';
import 'package:education/features/data/model/geography_model.dart';
import 'package:education/features/data/model/history_model.dart';
import 'package:education/features/data/model/informatica_model.dart';
import 'package:education/features/data/model/model_test/biology_test/kletka.dart';
import 'package:education/features/data/model/model_test/biology_test/mee.dart';
import 'package:education/features/data/model/model_test/biology_test/men_and_animal.dart';
import 'package:education/features/data/model/model_test/biology_test/nerv_sistemasy.dart';
import 'package:education/features/data/model/model_test/geography_test/asia.dart';
import 'package:education/features/data/model/model_test/geography_test/europe_capitals.dart';
import 'package:education/features/data/model/model_test/geography_test/world_capitals.dart';
import 'package:education/features/data/model/model_test/history/bayrky_germandar.dart';
import 'package:education/features/data/model/model_test/history/italia.dart';
import 'package:education/features/data/model/model_test/history/nemis_koroldugu.dart';
import 'package:education/features/data/model/model_test/history/rim.dart';
import 'package:education/features/data/model/model_test/informatica_test/computerdik_tarmaktar.dart';
import 'package:education/features/data/model/model_test/informatica_test/personal_computer.dart';
import 'package:education/features/data/model/model_test/informatica_test/sistemalyk_computer.dart';
import 'package:education/features/data/model/model_test/geography_test/usa_test.dart';
import 'package:education/features/data/model/subjects_topics_model.dart';
import 'package:education/features/data/model/test_model.dart';
import 'package:education/features/data/repository/service_test/biology_test/kletka_service.dart';
import 'package:education/features/data/repository/service_test/biology_test/man_and_animal.dart';
import 'package:education/features/data/repository/service_test/biology_test/mee_service.dart';
import 'package:education/features/data/repository/service_test/biology_test/nerv_sistemasy_service.dart';
import 'package:education/features/data/repository/service_test/geography_test/asia.dart';
import 'package:education/features/data/repository/service_test/geography_test/europe_capitals.dart';
import 'package:education/features/data/repository/service_test/geography_test/usa.dart';
import 'package:education/features/data/repository/service_test/geography_test/world_capitals.dart';
import 'package:education/features/data/repository/service_test/history/bayirky_germandar.dart';
import 'package:education/features/data/repository/service_test/history/italia_service.dart';
import 'package:education/features/data/repository/service_test/history/nemis_koroldugu_service.dart';
import 'package:education/features/data/repository/service_test/informatica_test/computerdik_tarmaktar.dart';
import 'package:education/features/data/repository/service_test/informatica_test/sistemalyk_computer.dart';
import 'package:education/features/data/repository/service_topic/biology_topics_service.dart';
import 'package:education/features/data/repository/service_topic/geography_topics_service.dart';
import 'package:education/features/data/repository/service_topic/history_toics_service.dart';
import 'package:education/features/data/repository/service_topic/informatica_topics_service.dart';
import 'package:education/features/data/repository/subjects_topics_service.dart';
import 'package:education/features/data/repository/test_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/service_test/history/rim_service.dart';
import '../../data/repository/service_test/informatica_test/personal_computer.dart';
part 'education_event.dart';
part 'education_state.dart';

class SubjectsBloc extends Bloc<EducationEvent, EducationState> {
  SubjectsBloc(
    this.subjectsTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent1>(_getSubjects);
  }
  final SubjectsTopicsService subjectsTopicsService;

  Future<void> _getSubjects(
      FetchDataEvent1 event, Emitter<EducationState> emit) async {
    final dataSubjects = await subjectsTopicsService.getData();

    if (dataSubjects != null) {
      emit(
        SubjectsSuccess(
          subjectsTopicsModel: dataSubjects,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class InformaticaBloc extends Bloc<EducationEvent, EducationState> {
  InformaticaBloc(
    this.informaticaTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent2>(_getInformatica);
  }
  final InformaticaTopicsService informaticaTopicsService;

  Future<void> _getInformatica(
      FetchDataEvent2 event, Emitter<EducationState> emit) async {
    final dataInformatica = await informaticaTopicsService.getData();
    if (dataInformatica != null) {
      emit(
        InformaticaSuccess(
          informaticaModel: dataInformatica,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class HistoryBloc extends Bloc<EducationEvent, EducationState> {
  HistoryBloc(
    this.historyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent3>(_getHistory);
  }
  final HistoryTopicsService historyTopicsService;

  Future<void> _getHistory(
      FetchDataEvent3 event, Emitter<EducationState> emit) async {
    final dataHistory = await historyTopicsService.getData();
    if (dataHistory != null) {
      emit(
        HistorySuccess(
          historyTopicsModel: dataHistory,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class BiologyBloc extends Bloc<EducationEvent, EducationState> {
  BiologyBloc(
    this.biologyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent4>(_getBiology);
  }
  final BiologyTopicsService biologyTopicsService;

  Future<void> _getBiology(
      FetchDataEvent4 event, Emitter<EducationState> emit) async {
    final dataBiology = await biologyTopicsService.getData();
    if (dataBiology != null) {
      emit(
        BiologySuccess(
          biologyTopicsModel: dataBiology,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class GeographyBloc extends Bloc<EducationEvent, EducationState> {
  GeographyBloc(
    this.geographyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent5>(_getGeography);
  }
  final GeograhyTopicsService geographyTopicsService;

  Future<void> _getGeography(
      FetchDataEvent5 event, Emitter<EducationState> emit) async {
    final dataGeography = await geographyTopicsService.getData();
    if (dataGeography != null) {
      emit(
        GeographySuccess(
          geographyTopicsModel: dataGeography,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class TestsBloc extends Bloc<EducationEvent, EducationState> {
  TestsBloc(
    this.testTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent6>(_getTest);
  }
  final TestTopicsService testTopicsService;

  Future<void> _getTest(
      FetchDataEvent6 event, Emitter<EducationState> emit) async {
    final dataTest = await testTopicsService.getData();
    if (dataTest != null) {
      emit(
        TestSuccess(
          testTopicsModel: dataTest,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class EuropeCapitalTestBloc extends Bloc<EducationEvent, EducationState> {
  EuropeCapitalTestBloc({required this.geographyTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEuropeCapitalTest>(_getGeographyTest);
  }
  final EuropeCapitalsTestTopicsService geographyTestTopicsService;

  Future<void> _getGeographyTest(
      FetchDataEuropeCapitalTest event, Emitter<EducationState> emit) async {
    final geographyDataTest = await geographyTestTopicsService.getData();
    if (geographyDataTest != null) {
      emit(
        EuropeCapitalTestSuccess(
          europeCapitalTestToicsModel: geographyDataTest,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class UsaTestBloc extends Bloc<EducationEvent, EducationState> {
  UsaTestBloc({required this.usaTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataUsaTest>(_getUsaTest);
  }
  final UsaTestTopicsService usaTestTopicsService;

  Future<void> _getUsaTest(
      FetchDataUsaTest event, Emitter<EducationState> emit) async {
    final usaTestData = await usaTestTopicsService.getData();
    if (usaTestData != null) {
      emit(
        UsaTestSuccess(usaTestToicsModel: usaTestData),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class AsiaTestBloc extends Bloc<EducationEvent, EducationState> {
  AsiaTestBloc({required this.asiaTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataAsiaTest>(_getAsiaTest);
  }
  final AsiaTestTopicsService asiaTestTopicsService;

  Future<void> _getAsiaTest(
      FetchDataAsiaTest event, Emitter<EducationState> emit) async {
    final asiaTestData = await asiaTestTopicsService.getData();
    if (asiaTestData != null) {
      emit(
        AsiaTestSuccess(asiaTestToicsModel: asiaTestData),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class WorldCapitalsTestBloc extends Bloc<EducationEvent, EducationState> {
  WorldCapitalsTestBloc({required this.worldCapitalsTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataWorldCapitalsTest>(_getWorldCapitalsTest);
  }
  final WorldCapitalsTestTopicsService worldCapitalsTestTopicsService;

  Future<void> _getWorldCapitalsTest(
      FetchDataWorldCapitalsTest event, Emitter<EducationState> emit) async {
    final worldCaitalTestData = await worldCapitalsTestTopicsService.getData();
    if (worldCaitalTestData != null) {
      emit(WorlCapitalsTestSuccess(
          worldCapitalsTestToicsModel: worldCaitalTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class ManAndAnimalTestBloc extends Bloc<EducationEvent, EducationState> {
  ManAndAnimalTestBloc({required this.manAndAnimalTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataManAndAnimalTest>(_getManAndAnimalTest);
  }
  final ManAndAnimalTestTopicsService manAndAnimalTestTopicsService;

  Future<void> _getManAndAnimalTest(
      FetchDataManAndAnimalTest event, Emitter<EducationState> emit) async {
    final manAndAnimalCaitalTestData =
        await manAndAnimalTestTopicsService.getData();
    if (manAndAnimalCaitalTestData != null) {
      emit(ManAndAnimalsTestSuccess(
          manAndAnimalsTestToicsModel: manAndAnimalCaitalTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class KletkaTestBloc extends Bloc<EducationEvent, EducationState> {
  KletkaTestBloc({required this.kletkaTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchKletkaTest>(_getKletkaTest);
  }
  final KletkaTestTopicsService kletkaTestTopicsService;

  Future<void> _getKletkaTest(
      FetchKletkaTest event, Emitter<EducationState> emit) async {
    final kletkaTestTopicsData = await kletkaTestTopicsService.getData();
    if (kletkaTestTopicsData != null) {
      emit(KletkaTestSuccess(kletkaTestToicsModel: kletkaTestTopicsData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class NervSistemasyTestBloc extends Bloc<EducationEvent, EducationState> {
  NervSistemasyTestBloc({required this.nervSistemasyTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchNervSistemasyTest>(_getNervSistemasyTest);
  }
  final NervSistemasyTestTopicsService nervSistemasyTestTopicsService;

  Future<void> _getNervSistemasyTest(
      FetchNervSistemasyTest event, Emitter<EducationState> emit) async {
    final nervSistemasyTestData =
        await nervSistemasyTestTopicsService.getData();
    if (nervSistemasyTestData != null) {
      emit(NervSistemasyTestSuccess(
          nervSistemasyTestToicsModel: nervSistemasyTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class MeeTestBloc extends Bloc<EducationEvent, EducationState> {
  MeeTestBloc({required this.meeTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchMeeTest>(_getMeeTest);
  }
  final MeeTestTopicsService meeTestTopicsService;

  Future<void> _getMeeTest(
      FetchMeeTest event, Emitter<EducationState> emit) async {
    final meeTestData = await meeTestTopicsService.getData();
    if (meeTestData != null) {
      emit(MeeTestSuccess(meeTestToicsModel: meeTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class NemisKorolduguTestBloc extends Bloc<EducationEvent, EducationState> {
  NemisKorolduguTestBloc({required this.nemisKorolduguTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchNemisKorolduguTest>(_getNemisKorolduguTest);
  }
  final NemisKorolduguTestTopicsService nemisKorolduguTestTopicsService;

  Future<void> _getNemisKorolduguTest(
      FetchNemisKorolduguTest event, Emitter<EducationState> emit) async {
    final nemisKorolduguTestData =
        await nemisKorolduguTestTopicsService.getData();
    if (nemisKorolduguTestData != null) {
      emit(NemisKorolduguTestSuccess(
          nemisKorolduguTestToicsModel: nemisKorolduguTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class RimTestBloc extends Bloc<EducationEvent, EducationState> {
  RimTestBloc({required this.rimTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchRimTest>(_getRimTest);
  }
  final RimTestTopicsService rimTestTopicsService;

  Future<void> _getRimTest(
      FetchRimTest event, Emitter<EducationState> emit) async {
    final rimTestData = await rimTestTopicsService.getData();
    if (rimTestData != null) {
      emit(RimTestSuccess(rimTestToicsModel: rimTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class BayirkyGermandarTestBloc extends Bloc<EducationEvent, EducationState> {
  BayirkyGermandarTestBloc({required this.bayirkyGermandarTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchBayirkyGermandarTest>(_getBayirkyGermandarTest);
  }
  final BayirkyGermandarTestTopicsService bayirkyGermandarTestTopicsService;

  Future<void> _getBayirkyGermandarTest(
      FetchBayirkyGermandarTest event, Emitter<EducationState> emit) async {
    final bayirkyGermandarTestData =
        await bayirkyGermandarTestTopicsService.getData();
    if (bayirkyGermandarTestData != null) {
      emit(BayirkyGermandarTestSuccess(
          bayirkyGermandarTestToicsModel: bayirkyGermandarTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class ItaliaTestBloc extends Bloc<EducationEvent, EducationState> {
  ItaliaTestBloc({required this.italiaVIXTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchItaliaVIXTest>(_getItaliaVIXTest);
  }
  final ItaliaTestTopicsService italiaVIXTestTopicsService;

  Future<void> _getItaliaVIXTest(
      FetchItaliaVIXTest event, Emitter<EducationState> emit) async {
    final italiaVIXTestData = await italiaVIXTestTopicsService.getData();
    if (italiaVIXTestData != null) {
      emit(ItaliaTestSuccess(italiaVIXTestToicsModel: italiaVIXTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class PersonalComputerTestBloc extends Bloc<EducationEvent, EducationState> {
  PersonalComputerTestBloc({required this.personalComputerTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<PersonalComputerTest>(_getPersonalComputerTest);
  }
  final PersonalComputerTestTopicsService personalComputerTestTopicsService;

  Future<void> _getPersonalComputerTest(
      PersonalComputerTest event, Emitter<EducationState> emit) async {
    final personalComputerTestData =
        await personalComputerTestTopicsService.getData();
    if (personalComputerTestData != null) {
      emit(PersonalComputerTestSuccess(
          personalComputerTestToicsModel: personalComputerTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class ComputerTarmaktaryTestBloc extends Bloc<EducationEvent, EducationState> {
  ComputerTarmaktaryTestBloc(
      {required this.computerdikTarmaktarTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchComputerdikTarmaktarTest>(_getComputerdikTarmaktarTest);
  }
  final ComputerdikTarmaktarTestTopicsService
      computerdikTarmaktarTestTopicsService;

  Future<void> _getComputerdikTarmaktarTest(
      FetchComputerdikTarmaktarTest event, Emitter<EducationState> emit) async {
    final computerdikTarmaktarTestData =
        await computerdikTarmaktarTestTopicsService.getData();
    if (computerdikTarmaktarTestData != null) {
      emit(ComputerTarmaktaryTestSuccess(
          computerdikTarmaktarTestModel: computerdikTarmaktarTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class SistemalykTarmaktarTestBloc extends Bloc<EducationEvent, EducationState> {
  SistemalykTarmaktarTestBloc(
      {required this.sistemalykTarmaktarTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchSistemakykTarmaktarTest>(_getComputerdikTarmaktarTest);
  }
  final SistemalykTarmaktarTestTopicsService
      sistemalykTarmaktarTestTopicsService;

  Future<void> _getComputerdikTarmaktarTest(
      FetchSistemakykTarmaktarTest event, Emitter<EducationState> emit) async {
    final sistemalykTarmaktarTestData =
        await sistemalykTarmaktarTestTopicsService.getData();
    if (sistemalykTarmaktarTestData != null) {
      emit(SistemalykTarmaktarTestSuccess(
          sistemalykComputerTestModel: sistemalykTarmaktarTestData));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}
