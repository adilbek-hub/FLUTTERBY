import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PickerFiles(),
    );
  }
}

class PickerFiles extends StatelessWidget {
  const PickerFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Picker Files')),
      ),
      body: Container(
        constraints: BoxConstraints(maxWidth: 400),
        padding: EdgeInsets.all(32),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();
            if (result == null) return;
            final file = result.files.first;
            openFile(file);
            print(file.name);
            print(file.bytes);
            print(file.size);
            print(file.extension);
            print(file.path);
            final newFile = await saveFilePermanently(file);
          },
          child: Text('Pick file'),
        ),
      ),
    );
  }

  Future<File> saveFilePermanently(PlatformFile file) async {
    final appStorage = await getApplicationDocumentDirectory();
    final newFile = File('${appStorage.path}', fileName)
  }

  void openFile(PlatformFile? file) {
    OpenFile.open(file?.path!);
  }
}
