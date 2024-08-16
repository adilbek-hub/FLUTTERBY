import 'package:clean_architecture_rick_and_morty/core/error/failur.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/entitiles/person_entity.dart';
import 'package:dartz/dartz.dart';

abstract class PersonRepository {
  //получать сушности из репазиторий и передовать эти сушности уровен пристовление, по этому эти сушности должны возвращать  тип List <PersonEntity>

//Погрузка персонажа или плагинация
  Future<Either<Failure, List<PersonEntity>>> getAllPersons(int page);
  // Поиск персонажа
  Future<Either<Failure, List<PersonEntity>>> searchPerson(String query);
// Таким образом мы определили контракт для репазитория а реализуем контракт на уровне данные
}


//причем мы вед не хотим чтобы ошибки свободно распросронялись не забывая ловить где то еще в коде по этому предлогаю перехватывать как можно ранше. аперехватывать мы будем репазитории. Таким образом наш репазиторий будет возвращать из своих методов как <Future<List<PersonEntity>>> так и объекты failure
