import 'package:flutter/material.dart';
import 'package:like_with_auth/repo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isAuthenticated = false;

  // Предположим, что это флаг авторизации
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          style: isAuthenticated
              ? ElevatedButton.styleFrom(backgroundColor: Colors.red)
              : ElevatedButton.styleFrom(),
          onPressed: () async {
            bool authenticated = await postData.getData();
            setState(() {
              isAuthenticated = authenticated;
            });
            // Проверка авторизации при нажатии на кнопку
            if (isAuthenticated) {
              return;
            } else {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Ошибка авторизации'),
                    content: const Text(
                        'Авторизуйтесь, чтобы получить доступ к данным.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('ОК'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: const Text('Проверить авторизацию'),
        ),
      ),
    );
  }
}
