
import 'package:flutter/material.dart';
import 'api/categories_api.dart';

void main(){

  runApp(bikeapp());

}

class bikeapp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,

      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  CategoriesApi categoriesApi;

  @override
  void initState(){
    super.initState();

    categoriesApi = CategoriesApi();
    categoriesApi.fetchAllCategories();

  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title: Text('Go Bikes App')
      ),
      body: Center(
        child: Text("Hello Flutter"),
      ),
    );
  }
}


