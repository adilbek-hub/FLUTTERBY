import 'package:clean_architecture_rick_and_morty/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:clean_architecture_rick_and_morty/core/error/failur.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/entitiles/person_entity.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/repositories/person_repository.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchPersonParams> {
  final PersonRepository personRepository;
  SearchPerson({required this.personRepository});

  Future<Either<Failure, List<PersonEntity>>> call(
      SearchPersonParams searchPersonParams) async {
    return await personRepository.searchPerson(searchPersonParams.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;
  const SearchPersonParams({required this.query});
  @override
  List<Object?> get props => [query];
}
