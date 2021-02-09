import 'package:flutter/material.dart';

main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote'),
      ),
      body: ListView(
        children: [
          QuoteCard('111', '1111',
              'https://upload.wikimedia.org/wikipedia/th/8/8d/Yoda_Promo3.jpg'),
          QuoteCard(
              '2222', '222', 'https://cx.lnwfile.com/_/cx/_raw/eo/0x/07.jpg'),
          QuoteCard(
              '333', '333', 'https://cx.lnwfile.com/_/cx/_raw/e6/st/qj.jpg'),
        ],
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final String _text;
  final String _author;
  final String _imageUrl;

  const QuoteCard(
    this._text,
    this._author,
    this._imageUrl, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage('$_imageUrl'))),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '$_text',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment(1, 0),
            padding: const EdgeInsets.all(8),
            child: Text(
              '--"$_author"',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
