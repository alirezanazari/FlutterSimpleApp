import 'package:flutter/material.dart';

class Quote {
  String text;
  String author;

  Quote({this.text, this.author});
}

class QuoteWidget extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteWidget({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '- ${quote.author}',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete')
            )
          ],
        ),
      ),
    );
  }
}
