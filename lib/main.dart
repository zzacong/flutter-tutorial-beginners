// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/quote.dart';
import 'package:my_app/quote_card.dart';

void main() {
  runApp(const MaterialApp(
    // home: Home(),
    home: QuoteList(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),

      // body: Center(
      /** Image */
      //   // child: Image.network(
      //   //     "https://images.unsplash.com/photo-1644247988716-e5b98d435f22"),
      //   // child: Image.asset("assets/images/img1.jpg"),

      /** Buttons and Icons */
      //   // child: Icon(
      //   //   Icons.airport_shuttle,
      //   //   color: Colors.lightBlue,
      //   //   size: 100,
      //   // ),

      //   // child: ElevatedButton(
      //   //   onPressed: () {},
      //   //   child: Text('Click me'),
      //   //   style: ElevatedButton.styleFrom(
      //   //     primary: Colors.red,
      //   //   ),
      //   // ),

      //   // child: ElevatedButton.icon(
      //   //   onPressed: () {},
      //   //   icon: Icon(Icons.mail),
      //   //   label: Text('mail me'),
      //   //   style: ElevatedButton.styleFrom(
      //   //     primary: Colors.red,
      //   //   ),
      //   // ),

      //   // child: IconButton(
      //   //   onPressed: () {},
      //   //   icon: Icon(Icons.alternate_email),
      //   //   color: Colors.amber,
      //   ),

      /** Containers & Padding */
      // body: Container(
      //   color: Colors.grey[200],
      //   // padding: EdgeInsets.all(20),
      //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //   // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      //   margin: EdgeInsets.all(20),
      //   child: Text('hello'),
      // ),

      // body: Padding(
      //   padding: EdgeInsets.all(20),
      //   child: Text("some text"),
      // ),

      /** Rows */
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Text('hello world'),
      //     TextButton(
      //       onPressed: () {},
      //       child: Text('Button'),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(20),
      //       child: Text('inside container'),
      //     )
      //   ],
      // ),

      /** Columns */
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     Row(
      //       children: <Widget>[
      //         Text('hello'),
      //         Text('world'),
      //       ],
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20),
      //       color: Colors.cyanAccent,
      //       child: Text('one'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30),
      //       color: Colors.pinkAccent,
      //       child: Text('one'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40),
      //       color: Colors.amberAccent,
      //       child: Text('one'),
      //     ),
      //   ],
      // ),

      /** Expanded Widgets */
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/img1.jpg'),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {},
        backgroundColor: Colors.red[700],
      ),
    );
  }
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //  List<String> quotes = [
  //    'Be yourself; everyone else is already taken',
  //    'I have nothing to declare except my genius',
  //    'The truth is rarely pure and never simple'
  //  ];

  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                onDelete: () => setState(() => quotes.remove(quote))))
            .toList(),
      ),
    );
  }
}
