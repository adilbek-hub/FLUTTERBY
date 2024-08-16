import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/features/data/model/biology_model.dart';
import 'package:education/features/presentation/pages/topic_pages_about_biology/topic_pages_about_biology.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BiologyBolumuWidget extends StatefulWidget {
  const BiologyBolumuWidget({
    super.key,
    required PageController pageController,
    required this.biologyBolumuTopicsModel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<BiologyTopicsModel> biologyBolumuTopicsModel;

  @override
  State<BiologyBolumuWidget> createState() => _BiologyBolumuWidgetState();
}

class _BiologyBolumuWidgetState extends State<BiologyBolumuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            controller: widget._pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.biologyBolumuTopicsModel.length,
            itemBuilder: (BuildContext context, int index) {
              final biology = widget.biologyBolumuTopicsModel[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    forPages(index);
                  },
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 215, 227, 226),
                            offset: Offset(-12, 12),
                            blurRadius: 8,
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 184, 243, 235),
                            Color.fromARGB(255, 254, 242, 242)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropCapText(
                              biology.title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  // fontFamily: 'Knewave-Regular',
                                  color: Color(0xff47455f),
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              dropCap: DropCap(
                                width: 100,
                                height: 100,
                                child: CachedNetworkImage(
                                  imageUrl: biology.image,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ),
                            const Divider(),
                            AutoSizeText(
                              biology.description,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Avenir',
                                  color: Color.fromARGB(255, 186, 148, 148),
                                  fontWeight: FontWeight.w400),
                              maxFontSize: 15.0,
                              minFontSize: 10.0,
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: widget._pageController,
          count: widget.biologyBolumuTopicsModel.length,
          effect: JumpingDotEffect(
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.deepPurple.shade100,
            dotHeight: 15,
            dotWidth: 15,
            spacing: 16,
            jumpScale: 3,
          ),
        ),
      ],
    );
  }

  int currentIndex = 0;
  void forPages(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return currentIndex == 0
              ? KishiJanaJanybar(
                  biologyTopicsModel: widget.biologyBolumuTopicsModel,
                )
              : currentIndex == 1
                  ? Kletka(
                      biologyTopicsModel: widget.biologyBolumuTopicsModel,
                    )
                  : currentIndex == 2
                      ? NervSistemasy(
                          biologyTopicsModel: widget.biologyBolumuTopicsModel,
                        )
                      : Mee(
                          biologyTopicsModel: widget.biologyBolumuTopicsModel,
                        );
        },
      ),
    );
    setState(() {
      currentIndex = index;
    });
  }
}
