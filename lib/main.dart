import 'package:flutter/material.dart';
import 'package:fruitlist/FruitDataModel.dart';
import 'package:fruitlist/fruitDetail.dart';

import 'FruitDataModel.dart';
import 'fruitDetail.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    static List<String> fruitname =['Apple','Banana','Mango','Orange','pineapple'];

    static List url = ['https://media.istockphoto.com/photos/red-apple-picture-id184276818?b=1&k=20&m=184276818&s=170667a&w=0&h=1jiJbUmZdjOPRlfpz7hKexA0XwEPX2b3YCRvamQhWWY=',
      'https://media.istockphoto.com/photos/banana-bunch-picture-id173242750?b=1&k=20&m=173242750&s=170667a&w=0&h=oRhLWtbAiPOxFAWeo2xEeLzwmHHm8W1mtdNOS7Dddd4=',
      'https://media.istockphoto.com/photos/mango-fruit-picture-id1318935291?b=1&k=20&m=1318935291&s=170667a&w=0&h=oE4HCeBbUOdx6EKBlGVIsswuK_n7ncqgtPnT1vVjo9A=',
      'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
      'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'];

     final List<FruitDataModel> fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel('${fruitname[index]}', '${url[index]}',
          '${fruitname[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pass Data from ListView to next Screen'),),
      body: ListView.builder(
          itemCount: fruitdata.length,
          itemBuilder: (context,index){
             return Card(
               child: ListTile(
                 title: Text(fruitdata[index].name),
                 leading: SizedBox(
                   width: 50,
                   height: 50,
                   child: Image.network(fruitdata[index].ImageUrl),
                 ),
                 onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FriutDetail(fruitDataModel: fruitdata[index],)));
              },
               ),
             );
          }
      )
    );
  }
}
