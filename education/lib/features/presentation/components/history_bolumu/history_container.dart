import 'package:flutter/material.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff8FE1D7),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.adaptive.arrow_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 45,
          width: 300,
          height: 50,
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: const Center(
              child: Text(
                'Тарых бөлүмү',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8FE1D7)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
