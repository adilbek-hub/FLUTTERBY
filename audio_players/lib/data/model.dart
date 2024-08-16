class MusicModel {
  final String musicName;
  final String author;

  MusicModel({
    required this.musicName,
    required this.author,
  });
}

List<MusicModel> musics1 = [
  MusicModel(musicName: 'm1.mp3', author: 'Jara'),
  MusicModel(musicName: 'm2.mp3', author: 'Jara'),
  MusicModel(musicName: 'm3.mp3', author: 'Jara'),
  MusicModel(musicName: 'm4.mp3', author: 'Jara')
];
