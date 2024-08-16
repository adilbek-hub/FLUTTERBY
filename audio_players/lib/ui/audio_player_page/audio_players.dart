import 'package:audio_players/ui/widgets/splash_page.dart';
import 'package:flutter/material.dart';

class AudioPlayers extends StatefulWidget {
  const AudioPlayers({super.key});

  @override
  State<AudioPlayers> createState() => _AudioPlayersState();
}

class _AudioPlayersState extends State<AudioPlayers> {
  void toNextPage() {
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AudioPlayers(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SpalashPage()),
    );
  }
}
