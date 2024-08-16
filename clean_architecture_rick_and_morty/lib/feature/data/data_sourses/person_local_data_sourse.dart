import 'dart:convert';
import 'dart:ffi';

import 'package:clean_architecture_rick_and_morty/core/error/exception.dart';
import 'package:clean_architecture_rick_and_morty/feature/data/models/person_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PersonLocalDataSourse {
  Future<List<PersonModel>> getLastPersonsFromChashe();
  Future<void> personToCashe(List<PersonModel> persons);
}

const CASHE_PERSON_LIST = "CASHE_PERSONS_LIST";

class PersonLocalDataSourseImpl implements PersonLocalDataSourse {
  final SharedPreferences sharedPreferences;

  PersonLocalDataSourseImpl({required this.sharedPreferences});
  @override
  Future<List<PersonModel>> getLastPersonsFromChashe() {
    final jsonPersonsList = sharedPreferences.getStringList(CASHE_PERSON_LIST);
    if (jsonPersonsList.isNotEmpty) {
      return Future.value(jsonPersonsList
          .map((person) => PersonModel.fromJson(jsonDecode(person)))
          .toList());
    } else {
      throw CasheException();
    }
  }

  @override
  Future<void> personToCashe(List<PersonModel> persons) {
    final List<String> jsonPersonalList =
        persons.map((person) => json.encode(person.toJson())).toList();
    sharedPreferences.setStringList(CASHE_PERSON_LIST, jsonPersonalList);
    print('Persons to wright Cashe: ${jsonPersonalList.length}');
    return Future.value(jsonPersonalList);
  }
}
