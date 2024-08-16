import 'package:dodo_pizza_ui/components/home_components/combo_pizza.dart';
import 'package:dodo_pizza_ui/features/data/model.dart';
import 'package:dodo_pizza_ui/features/presentation/views/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:dodo_pizza_ui/components/home_components/components_export.dart';
import 'package:dodo_pizza_ui/constants/costants_export.dart';

import '../../data/models/type_of_pizza.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: ChooseDelivery(),
                ),
                AppSizes.heigh20,
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: food.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const UserChoosesOne();
                      }),
                ),
                AppSizes.heigh20,
                const Row(
                  children: [
                    AppSizes.width10,
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppTexts.profitableTasty,
                        style: TextStyles.profitableTastyStyle,
                      ),
                    ),
                  ],
                ),
                AppSizes.heigh18,
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: typeOfPizzaList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return UserChoosesTwo(
                        profitableTasty: typeOfPizzaList[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailView(
                                profitableTasty: typeOfPizzaList[index],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: textsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final text = textsList[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 20,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Text(
                              text.text,
                              style: TextStyle(
                                fontWeight: index == selectedIndex
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                AppSizes.heigh20,
                if (selectedIndex == 0)
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                        itemCount: gomeFoodsList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          final foodss = gomeFoodsList[index];
                          return UserChooseThree(foodss: foodss);
                        }),
                  )
                else if (selectedIndex == 1)
                  const UserChooseFour()
                else if (selectedIndex == 2)
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                        itemCount: gomeFoodsList2.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          final foodss2 = gomeFoodsList2[index];
                          return UserChooseFive(foodss2: foodss2);
                        }),
                  )
                else if (selectedIndex == 3)
                  SizedBox(
                      height: 500,
                      child: ListView.builder(
                          itemCount: comboList.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            final combo = comboList[index];
                            return ComboPizza(combo: combo);
                          })),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserCorner(),
          LocationCard(),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}
