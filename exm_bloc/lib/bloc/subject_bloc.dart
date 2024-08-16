import 'package:equatable/equatable.dart';
import 'package:exm_bloc/model/biology.dart';
import 'package:exm_bloc/model/informatica.dart';

import 'package:exm_bloc/services/biology_service.dart';
import 'package:exm_bloc/services/informatica_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'subject_event.dart';
part 'subject_state.dart';

class BiologyBloc extends Bloc<SubjectEvent, SubjectState> {
  BiologyBloc({required this.biologyTopicsService}) : super(SubjectLoading()) {
    on<SubjectEvent>((event, emit) {});
    on<FetchDataEvent1>(_getSubjectsByBiology);
  }

  final BiologyTopicsService biologyTopicsService;

  Future<void> _getSubjectsByBiology(
      FetchDataEvent1 event, Emitter<SubjectState> emit) async {
    final dataBiology = await biologyTopicsService.getData();
    if (dataBiology != null) {
      emit(
        BiologySuccess(biologyModel: dataBiology),
      );
    } else {
      emit(
        const SubjectError(error: 'SubjectError'),
      );
    }
  }
}

class InformaticaBloc extends Bloc<SubjectEvent, SubjectState> {
  InformaticaBloc({required this.informaticaService})
      : super(SubjectLoading()) {
    on<SubjectEvent>((event, emit) {});
    on<FetchDataEvent2>(_getSubjectsByInformation);
  }

  final InformaticaTopicsService informaticaService;

  Future<void> _getSubjectsByInformation(
      FetchDataEvent2 event, Emitter<SubjectState> emit) async {
    final dataInformatica = await informaticaService.getData();

    if (dataInformatica != null) {
      emit(
        InformaticaSuccess(informaticaToicsModel: dataInformatica),
      );
    } else {
      emit(
        const SubjectError(error: 'SubjectError'),
      );
    }
  }
}
