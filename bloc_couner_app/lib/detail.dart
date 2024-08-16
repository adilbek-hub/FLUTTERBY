import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({
    Key? key,
    required this.count,
  }) : super(key: key);
  int count;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, widget.count);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text('${widget.count}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.count--;
          });
        },
        child: const Icon(
          Icons.remove,
        ),
      ),
    );
  }
}
