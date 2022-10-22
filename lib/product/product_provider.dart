import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_mid_test/product/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> list = [];
  List<String> listCategories = [];
  void getList() async {
    String urlAPI = 'https://fakestoreapi.com/products';
    var client = http.Client();
    var rs = await client.get(Uri.parse(urlAPI));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e) {
      return ProductModel(
        id: e['id'],
        title: e['title'],
        description: e['description'],
        price: e['price'],
        image: e['image'],
        category: e['category'],
      );
    }).toList();

    notifyListeners();
  }

  void getCategories() async {
    String urlAPI = 'https://fakestoreapi.com/products/categories';
    var client = http.Client();
    var rs = await client.get(Uri.parse(urlAPI));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    listCategories = jsonObject.map((e) {
      return e.toString();
    }).toList();

    notifyListeners();
  }
}
