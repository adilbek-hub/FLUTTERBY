import 'package:education/features/presentation/components/biology_bolumu/biologgy.dart';
import 'package:education/features/presentation/components/geography_bolumu/geography.dart';
import 'package:education/features/presentation/components/history_bolumu/history.dart';
import 'package:education/features/presentation/components/informatica_bolumu/informatica.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'ИНФОРМАТИКА',
    'ГЕОГРАФИЯ',
    'ТАРЫХ',
    'БИОЛОГИЯ',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var subject in searchTerms) {
      if (subject.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(subject);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var subject in searchTerms) {
      if (subject.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(subject);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return InkWell(
            onTap: () {
              if (result == searchTerms[0]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Informatica(),
                  ),
                );
              } else if (result == searchTerms[1]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Geography(),
                  ),
                );
              } else if (result == searchTerms[2]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const History(),
                  ),
                );
              } else if (result == searchTerms[3]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Biologgy(),
                  ),
                );
              }
            },
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/sear_avatar/book.jpg'),
                ),
                title: Text(
                  result,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: const Text(
                  'Билим алуу ийне менен кудук казгандай.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: const Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          );
        });
  }
}
