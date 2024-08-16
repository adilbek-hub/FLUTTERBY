import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  int currentMusic = 0;
  bool isPalying = false;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Audio Players'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  player.state == PlayerState.playing
                      ? player.pause()
                      : player.play(AssetSource('m1.mp3'));
                  setState(() {});
                },
                icon: const Icon(Icons.skip_previous),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  player.state == PlayerState.playing
                      ? player.pause()
                      : player.play(AssetSource('m2.mp3'));
                  setState(() {});
                },
                icon: const Icon(Icons.skip_next_sharp),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  player.state == PlayerState.playing
                      ? player.pause()
                      : player.play(AssetSource('m3.mp3'));
                  setState(() {});
                },
                icon: const Icon(Icons.skip_next),
              ),
            ],
          )
        ],
      ),
    );
  }
}
