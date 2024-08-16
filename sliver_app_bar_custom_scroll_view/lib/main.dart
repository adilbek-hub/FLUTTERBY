import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(Icons.menu_outlined, color: Colors.white),
            backgroundColor: const Color.fromARGB(255, 229, 95, 252),
            onStretchTrigger: () async {},
            forceElevated: true,
            stretch: true,
            actions: const [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://media.post.rvohealth.io/wp-content/uploads/2019/12/Woman-Riding-Rented-Bicycle-In-A-City.-Cycling-and-smiling-1200x628-facebook.jpg',
                fit: BoxFit.cover,
              ),
              collapseMode: CollapseMode.pin,
              title: const Text(
                'Sliver App Bar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          /////////////////////////////////////////
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 227, 112, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
