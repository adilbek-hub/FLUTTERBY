import 'dart:convert';
import 'dart:io';

import 'package:clean_architecture_rick_and_morty/core/error/exception.dart';
import 'package:http/http.dart' as http;

import 'package:clean_architecture_rick_and_morty/feature/data/models/person_model.dart';

abstract class PersonRemoteDataSourse {
  Future<List<PersonModel>> getAllPersons(int page);
  Future<List<PersonModel>> searchPerson(String query);
}

class PersonRemoteDataSourseImpl implements PersonRemoteDataSourse {
  PersonRemoteDataSourseImpl({required this.client});
  final http.Client client;

  @override
  Future<List<PersonModel>> getAllPersons(int page) => _getPersonFromUrl(
      'https://rickandmortyapi.com/api/character/?page=$page');

  @override
  Future<List<PersonModel>> searchPerson(String query) => _getPersonFromUrl(
      'https://rickandmortyapi.com/api/character/?name=$query');

  Future<List<PersonModel>> _getPersonFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final persons = jsonDecode(response.body);
      return (persons["results"] as List)
          .map((person) => PersonModel.fromJson(person))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
