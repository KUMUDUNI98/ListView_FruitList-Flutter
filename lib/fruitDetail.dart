import 'package:flutter/material.dart';
import 'package:fruitlist/FruitDataModel.dart';

class FriutDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;
  const FriutDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitDataModel.name),
      ),
      body: Column(
        children: [
          Image.network(fruitDataModel.ImageUrl),
          Text(fruitDataModel.desc),
        ],
      ),
    );
  }
}
