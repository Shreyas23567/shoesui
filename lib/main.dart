import 'package:flutter/material.dart';


void main() {

 runApp(MyApp());

}


class MyApp extends StatelessWidget {

 @override

 Widget build(BuildContext context) {

 return MaterialApp(

 debugShowCheckedModeBanner: false,

 title: 'Shoe Store',

 theme: ThemeData(

 primarySwatch: Colors.blue,

),

 home: ShoePage(),

 );

}

}


class ShoePage extends StatefulWidget {


 @override

 _ShoePageState createState() => _ShoePageState();

}


class _ShoePageState extends State<ShoePage> {

 int quantity = 1;


 @override

 Widget build(BuildContext context) {

 return Scaffold(

 appBar: AppBar(

 title: Text('Shoes'),
centerTitle: true,
 actions: [

 IconButton(

 icon: Icon(Icons.shopping_cart),
 onPressed: () {},

 ),

 ],

),

 body: Padding(

 padding: const EdgeInsets.all(16.0),
child: Column(

children: [

 Expanded(

 child: Stack(

children: [

 Align(
 alignment: Alignment.center,

child: Image.network(

'https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg',

 fit: BoxFit.cover,

 height: 300,
 ),

 ),
const Positioned(

top: 0,

 left: 0,

 child: Icon(Icons.circle, color: Colors.purpleAccent),

 ),

const Positioned(

 bottom: 0,

right: 0,

 child: Icon(Icons.circle, color: Colors.purpleAccent),

 ),

 ],

 ),

 ),

 const SizedBox(height: 20),

const Text(

'Nike Air Force 1 "07"',

style: TextStyle(

fontSize: 24,

 fontWeight: FontWeight.bold,

 ),

),
const SizedBox(height: 8),

Row(

 mainAxisAlignment: MainAxisAlignment.center,

children: [

 _buildTag('SHOES'),

SizedBox(width: 8),

 _buildTag('FOOTWEAR'),

 ],

 ),

const SizedBox(height: 16),

const Text(
'Legendary comfort shoes for men. '

 'Use high Quality classic with crisp leather, '

'Construction As a reflective-design with Classic logos.',

 textAlign: TextAlign.center,
 style: TextStyle(fontSize: 16),

 ),
 const SizedBox(height: 16),
 Row(

 mainAxisAlignment: MainAxisAlignment.center,

 children: [
IconButton(

 icon: Icon(Icons.remove),

onPressed: () {

setState(() {

 if (quantity > 1) quantity--;

});

 },
 ),

 Text(

 quantity.toString(),

 style: TextStyle(fontSize: 20),

 ),

 IconButton(

 icon: Icon(Icons.add),

 onPressed: () {

 setState(() {
 quantity++;

 });

 },

 ),

 ],

 ),
 SizedBox(height: 20),

 ElevatedButton(
 onPressed: () {},
 child: Padding(

 padding:

 const EdgeInsets.symmetric(vertical: 16, horizontal: 32),

 child: Text('PURCHASE'),
 ),

 style: ElevatedButton.styleFrom(

 backgroundColor: Colors.blue,

 shape: RoundedRectangleBorder(

 borderRadius: BorderRadius.circular(8.0),

 ),

 ),

 ),

 ],

 ),

 ),

 );

 }


 Widget _buildTag(String text) {
 return Container(

 padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),

 decoration: BoxDecoration(

 color: Colors.blue[100],

 borderRadius: BorderRadius.circular(20),

 ),

 child: Text(

 text,

 style: TextStyle(

 color: Colors.blue,

 fontSize: 14,

 fontWeight: FontWeight.bold,

 ),

 ),

 );

 }

}