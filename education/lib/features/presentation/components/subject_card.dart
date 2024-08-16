import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SubjectsCard extends StatelessWidget {
  const SubjectsCard({
    super.key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.image,
    this.onTap,
  });
  final Color color;
  final String text1, text2;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(text2),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 70,
                ),
                child: CachedNetworkImage(
                  imageUrl: image,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
