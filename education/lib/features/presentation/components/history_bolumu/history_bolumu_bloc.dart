import 'package:cached_network_image/cached_network_image.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/features/presentation/pages/topic_pages_about_history/bairky_germandyktar.dart';
import 'package:education/features/presentation/pages/topic_pages_about_history/italia_5_10_vek.dart';
import 'package:education/features/presentation/pages/topic_pages_about_history/nemis_koroldugu.dart';
import 'package:education/features/presentation/pages/topic_pages_about_history/rim.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/model/history_model.dart';

class HistoryBolumuWidget extends StatefulWidget {
  const HistoryBolumuWidget({
    super.key,
    required PageController pageController,
    required this.historyTopicsModel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<HistoryTopicsModel> historyTopicsModel;

  @override
  State<HistoryBolumuWidget> createState() => _HistoryBolumuWidgetState();
}

class _HistoryBolumuWidgetState extends State<HistoryBolumuWidget> {
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
            itemCount: widget.historyTopicsModel.length,
            itemBuilder: (BuildContext context, int index) {
              final historyTopic = widget.historyTopicsModel[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: InkWell(
                    onTap: () {
                      forPages(index);
                    },
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
                              historyTopic.title,
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
                                  imageUrl: historyTopic.image,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ),
                            const Divider(),
                            Text(
                              historyTopic.description,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Avenir',
                                  color: Color.fromARGB(255, 186, 148, 148),
                                  fontWeight: FontWeight.w400),
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
          count: widget.historyTopicsModel.length,
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
              ? NemisKoroldugu(
                  historyTopicsModel: widget.historyTopicsModel,
                )
              : currentIndex == 1
                  ? Rim(
                      historyTopicsModel: widget.historyTopicsModel,
                    )
                  : currentIndex == 2
                      ? Germandyktar(
                          historyTopicsModel: widget.historyTopicsModel,
                        )
                      : Italia(
                          historyTopicsModel: widget.historyTopicsModel,
                        );
        },
      ),
    );
    setState(() {
      currentIndex = index;
    });
  }
}
