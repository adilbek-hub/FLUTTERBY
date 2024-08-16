import 'package:capitals_of_the_world/features/data/model/continents.dart';
import 'package:capitals_of_the_world/features/presentation/pages/detail_page.dart';
import 'package:flutter/material.dart';

class ContinentsWidget extends StatelessWidget {
  const ContinentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: continentsList.length,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (continentsList[index].test != null) {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: ((context) => DetailPage(
                        test: continentsList[index].test!,
                      )),
                ),
              );
            } else {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    // <-- SEE HERE
                    title: const Text('Cancel booking'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('Are you sure want to cancel booking?'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('No'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Yes'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Container(
            color: const Color.fromARGB(255, 183, 247, 205),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  continentsList[index].continentName,
                ),
                Image.network(
                  continentsList[index].continentImage,
                  width: 160,
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}
