import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Продукты по категориям',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CategoryScreen(),
    );
  }
}

class Category {
  final int id;
  final String name;

  Category({required this.id, required this.name});
}

class Product {
  final int id;
  final String name;
  final int categoryId;

  Product({required this.id, required this.name, required this.categoryId});
}

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<Category> categories = [
    Category(id: 1, name: 'Фрукты'),
    Category(id: 2, name: 'Овощи'),
    Category(id: 3, name: 'Мясо'),
  ];

  final List<Product> products = [
    Product(id: 1, name: 'Яблоко', categoryId: 1),
    Product(id: 2, name: 'Банан', categoryId: 1),
    Product(id: 3, name: 'Картофель', categoryId: 2),
    Product(id: 4, name: 'Морковь', categoryId: 2),
    Product(id: 5, name: 'Курица', categoryId: 3),
    Product(id: 6, name: 'Говядина', categoryId: 3),
  ];

  int? selectedCategoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Продукты по категориям'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategoryId = category.id;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: selectedCategoryId == category.id
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        category.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products
                  .where((product) =>
                      selectedCategoryId == null ||
                      product.categoryId == selectedCategoryId)
                  .length,
              itemBuilder: (context, index) {
                final filteredProducts = products
                    .where((product) =>
                        selectedCategoryId == null ||
                        product.categoryId == selectedCategoryId)
                    .toList();
                final product = filteredProducts[index];
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
