import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = 'Alireza';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('ID Card'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              name = 'Alireza Nazari';
            });
          },
          backgroundColor: Colors.grey[850],
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text('NAME',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.normal)),
              SizedBox(height: 10),
              Text(name,
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('Occupation',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.normal)),
              SizedBox(height: 10),
              Text('Android Developer',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text('a.alirezanazari@gmail.com',
                      style: TextStyle(color: Colors.grey[400], fontSize: 14))
                ],
              )
            ],
          ),
        ));
  }
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is alredy taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde'),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => getQuoteTemplate(quote)).toList(),
      ),
    );
  }

  Widget getQuoteTemplate(Quote quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0 , vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text ,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- ${quote.author}' ,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ) ,
    );
  }

}
