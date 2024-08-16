import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:clean_architecture_rick_and_morty/core/error/failur.dart';
import 'package:clean_architecture_rick_and_morty/core/usecases/usecase.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/entitiles/person_entity.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/repositories/person_repository.dart';

//у нас будет первый <usecase> который будет отвечать за отображения списка персонажа.
class GetAllPersons extends UseCase<List<PersonEntity>, PagePersonParams> {
  final PersonRepository personRepository;
  GetAllPersons({required this.personRepository});

  Future<Either<Failure, List<PersonEntity>>> call(
      PagePersonParams pagePersonParams) async {
    // Это получает данные из репозитория и будет эти данные передавать уровен презентации
    return await personRepository.getAllPersons(pagePersonParams.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;
  const PagePersonParams({required this.page});

  @override
  List<Object?> get props => [page];
}
