import 'package:flutter/material.dart';
import 'package:project_mid_test/product/product_provider.dart';
import 'package:project_mid_test/product/product_list_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        home: ProductListPage(),
      ),
    ),
  );
}
