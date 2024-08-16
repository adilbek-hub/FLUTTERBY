import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/category.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/search_button.dart';

class CategoryChildrenPage extends StatelessWidget {
  const CategoryChildrenPage({
    super.key,
    required this.children,
    required this.category,
  });

  final List<Children> children;
  final Category category;

  @override
  Widget build(BuildContext context) {
    double totalPrice = calculateTotalPrice(children);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          category.name,
          style: const TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchButton(
              width: double.infinity,
              title: 'Поиск',
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(category.image, width: 30),
                    const SizedBox(width: 10),
                    AppText(
                      title: 'Все в категории ${category.name}',
                      textType: TextType.body,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AppText(
                      title: totalPrice.toString(),
                      textType: TextType.promocode,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(indent: 58),
          Expanded(
            child: ListView.builder(
              itemCount: children.length,
              itemBuilder: (context, index) {
                final child = children[index];
                return InkWell(
                  onTap: child.children != null
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryChildrenPage(
                                category: category,
                                children: child.children!,
                              ),
                            ),
                          );
                        }
                      : null,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: child.name,
                              textType: TextType.body,
                              color: Colors.black,
                            ),
                            Row(
                              children: [
                                AppText(
                                  title: child.price.toString(),
                                  textType: TextType.promocode,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 20),
                                const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  double calculateTotalPrice(List children) {
    double total = 0.0;
    for (var child in children) {
      total += child.price;
      if (child.children != null) {
        total += calculateTotalPrice(child.children!);
      }
    }
    return total;
  }
}
