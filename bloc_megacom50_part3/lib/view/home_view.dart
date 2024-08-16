import 'package:flutter/material.dart';

class NomeView extends StatefulWidget {
  const NomeView({super.key});

  @override
  State<NomeView> createState() => _NomeViewState();
}

class _NomeViewState extends State<NomeView> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerName = TextEditingController();
    final TextEditingController controllerMessage = TextEditingController();
    final TextEditingController controllerEmail = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Send Email',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: controllerName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: controllerEmail,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: controllerMessage,
              maxLines: 6,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Message'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: const Size(double.infinity, 30)),
              onPressed: () {},
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
