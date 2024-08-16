import 'package:data_withh_http/models/model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:http/http.dart' as http;

import 'dart:convert';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<Album?> fetchAlbum() async {
    // final url = Uri.https('https://jsonplaceholder.typicode.com/todos');

    // final response = await http.get(url);
    // print(response);
    Dio dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      print(response.data);
      return Album.fromJson(jsonDecode(response.data));
    } else {
      throw Exception('Failed to load album');
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchAlbum();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: FutureBuilder(
          future: fetchAlbum(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return Text(snapshot.error.toString());
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(snapshot.data!.id.toString()),
                  ],
                );
              } else {
                return const Text('Error Data');
              }
            } else {
              return const Text('UnknownError');
            }
          }),
    );
  }
}
