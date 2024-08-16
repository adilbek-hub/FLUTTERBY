import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:education/features/data/model/informatica_model.dart';

// ignore: must_be_immutable
class ComputerFunksialary extends StatefulWidget {
  const ComputerFunksialary({
    Key? key,
    required this.informaticatopics,
  }) : super(key: key);
  final InformaticaTopics informaticatopics;

  @override
  State<ComputerFunksialary> createState() => _ComputerFunksialaryState();
}

class _ComputerFunksialaryState extends State<ComputerFunksialary> {
  // ignore: prefer_collection_literals
  Set<int> pressedIndexes = Set<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Информатика'.toUpperCase(),
          style: const TextStyle(fontFamily: 'Lato-Black'),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Text(
              widget.informaticatopics.informatica[0].title,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                ),
                itemCount: widget
                    .informaticatopics.informatica[0].computerParts!.length,
                itemBuilder: ((context, index) {
                  bool isPressed = pressedIndexes.contains(index);
                  final computerFunction = widget
                      .informaticatopics.informatica[0].computerParts![index];
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 215, 227, 226),
                              offset: Offset(-12, 12),
                              blurRadius: 8,
                            ),
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 175, 244, 235),
                              Color.fromARGB(255, 249, 228, 228)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn3d.iconscout.com/3d/free/thumb/free-flutter-5562357-4642761.png?f=webp",
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: GestureDetector(
                                      onTapDown: (_) {
                                        setState(() {
                                          pressedIndexes.add(index);
                                        });
                                      },
                                      onTapUp: (_) {
                                        setState(
                                          () {
                                            pressedIndexes.remove(index);
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 500,
                                                        child: AlertDialog(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xffFFFFFF),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          insetPadding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 20,
                                                            top: 40,
                                                            right: 20,
                                                          ),
                                                          title: Text(
                                                            computerFunction
                                                                .name,
                                                            style:
                                                                const TextStyle(
                                                              color: Color(
                                                                  0xff313131),
                                                              fontSize: 21,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          content:
                                                              SingleChildScrollView(
                                                            child: Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: Text(
                                                                  computerFunction
                                                                      .tema),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              Colors.orange,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          fixedSize: Size(
                                                            MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                40,
                                                            65,
                                                          ),
                                                        ),
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context),
                                                        child: const Text(
                                                          'Чыгуу',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff474747),
                                                            fontSize: 21,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                });
                                          },
                                        );
                                      },
                                      onTapCancel: () {
                                        setState(() {
                                          pressedIndexes.remove(index);
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        transform: isPressed
                                            ? Matrix4.translationValues(0, 8, 0)
                                            : Matrix4.identity(),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 251, 176, 155),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 96, 88, 88),
                                              offset: Offset(-10, 12),
                                              blurRadius: 8,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          computerFunction.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FittedBox(
                              child: Text(
                                computerFunction.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
