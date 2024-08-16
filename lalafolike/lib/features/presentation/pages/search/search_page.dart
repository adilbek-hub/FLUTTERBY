import 'package:flutter/material.dart';

class SearchAlbum extends SearchDelegate {
  bool isSubmitted = false;
  @override
  String? get searchFieldLabel => 'Я ищу...';

  @override
  TextInputType? get keyboardType => TextInputType.text;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return theme.copyWith(
      appBarTheme: const AppBarTheme(
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.black),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: const TextStyle(color: Colors.black54),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      primaryColor: Colors.black,
      primaryIconTheme: const IconThemeData(color: Colors.black),
      primaryTextTheme: theme.textTheme,
    );
  }

  @override
  InputDecorationTheme get searchFieldDecorationTheme => InputDecorationTheme(
        filled: true,
        hintStyle: const TextStyle(color: Colors.black54),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
      );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      )
    ];
  }

  // @override
  // Widget buildResults(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => ProductBloc(),
  //     child: BlocBuilder<ProductBloc, ProductState>(
  //       builder: (context, state) {
  //         if (state is ProductInitial) {
  //           BlocProvider.of<ProductBloc>(context).add(FetchProducts(query, ''));
  //           return const Center(child: CircularProgressIndicator());
  //         } else if (state is ProductLoading) {
  //           return const Center(child: CircularProgressIndicator());
  //         } else if (state is ProductLoaded) {
  //           return BuildSearchResultWidget(
  //               snapshot: state.products, onTap: () {}, query: query);
  //         } else if (state is ProductError) {
  //           return BuildNoResultWidget(query: query);
  //         }
  //         return Container();
  //       },
  //     ),
  //   );
  // }

  // @override
  // Widget buildSuggestions(BuildContext context) {
  //   if (query.isEmpty) {
  //     return Center(
  //       child: Container(),
  //     );
  //   }
  //   return FutureBuilder<List<Products>>(
  //     future: quickProductsRepo.getProductsListDio(query, ''),
  //     builder: (context, snapshot) {
  //       if (snapshot.connectionState == ConnectionState.waiting) {
  //         return const Center(child: CircularProgressIndicator());
  //       } else if (snapshot.hasError) {
  //         return Center(child: Text(snapshot.error.toString()));
  //       } else if (snapshot.data == null || snapshot.data!.isEmpty) {
  //         return BuildNoResultWidget(query: query);
  //       } else {
  //         return BuildSearchSuggestionWidget(snapshot: snapshot);
  //       }
  //     },
  //   );
  // }

  @override
  void showResults(BuildContext context) {
    isSubmitted = true;
    super.showResults(context);
    // searchBloc.add(PerformSearchEvent(name: query));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
