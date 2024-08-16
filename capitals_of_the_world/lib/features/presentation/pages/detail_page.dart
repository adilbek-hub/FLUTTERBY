import 'package:capitals_of_the_world/features/data/model/test.dart';
import 'package:capitals_of_the_world/features/presentation/theme/app_size.dart';
import 'package:capitals_of_the_world/features/presentation/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    required this.test,
  }) : super(key: key);
  final List<Test> test;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final double sl = 0;
  int indexs = 0;
  int tuuraJoop = 0;
  int kataJoop = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _detailAppBar(tuuraJoop: tuuraJoop, kataJoop: kataJoop),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 15,
                  thumbColor: Colors.transparent,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 0.0)),
              child: Slider(
                min: 0.0,
                max: 100.0,
                value: sl,
                onChanged: (value) {},
              ),
            ),
          ),
          Text(
            widget.test[indexs].capitalName,
            style: AppTextStyles.capitalNameStyle,
          ),
          Expanded(
              child: Image.network(
                  'http://st-1.akipress.org/st_limon/1/1523419800_0.jpg')),
          AppSize.h20,
          Expanded(
            child: GridView.count(
              childAspectRatio: (1 / .6),
              shrinkWrap: true,
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                4,
                (index) {
                  return InkWell(
                    onTap: () {
                      if (indexs + 1 == widget.test[index].capitalName.length) {
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              // <-- SEE HERE
                              title: const Text('Cancel booking'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text("Туура жооп: ${tuuraJoop.toString()}"),
                                    Text(
                                      "Ката жооп: ${kataJoop.toString()}",
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('No'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: const Text('Yes'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        kataJoop = 0;
                        tuuraJoop = 0;
                        indexs = 0;
                        Navigator.pop(context);
                      } else {
                        if (widget.test[indexs].answers[index].isTrue == true) {
                          tuuraJoop++;
                        } else {
                          kataJoop++;
                        }
                        setState(() {});
                        indexs++;
                      }
                    },
                    child: Card(
                      color: Colors.grey[500],
                      margin: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          widget.test[indexs].answers[index].answerText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _detailAppBar({required int tuuraJoop, required int kataJoop}) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tuuraJoop.toString(),
            style: AppTextStyles.numberFalseStyle,
          ),
          Text('|'),
          Text(
            kataJoop.toString(),
            style: AppTextStyles.numberTrueStyle,
          ),
        ],
      ),
      actions: const [
        Icon(Icons.more_vert),
      ],
    );
  }
}

class ChooseCountries extends StatelessWidget {
  const ChooseCountries({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: Center(
            child: Text('Кыргызстан'),
          ),
        ),
      ),
    );
  }
}
