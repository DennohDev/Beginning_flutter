import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Layouts',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        //brightness has been deprecated to systemOverlayStyle
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu),),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.cloud_queue),)
        ],
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildJournalEntry(),
                    Divider(),
                    _buildJournalWeather(),
                    Divider(),
                    _buildJournalTags(),
                    Divider(),
                    _buildJournalFooterImages(),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
  Image _buildJournalHeaderImage() {
    return Image(
        image: AssetImage('assets/images/present.jpg'),
      fit: BoxFit.cover,
    );
  }
  Column _buildJournalEntry() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'My Birthday',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        Text(
          'Its going to be a great birthday. We are going out for dinner at my favourite place, then watch a movie after we go to the gelateria for ice cream and expresso',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
  Row _buildJournalWeather() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(width: 16.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '81º Clear',
              style: TextStyle(color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              '4500 Walimu Drive, Baraton, Nandi County, KE',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
  Wrap _buildJournalTags() {
    return Wrap(
      spacing: 8.0,
      children: List.generate(7, (int index) {
        return Chip(
            label: Text(
          'Gift ${index + 1}',
              style: TextStyle(fontSize: 10.0),
        ),
          avatar: Icon(
            Icons.card_giftcard,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
    );
  }
  Row _buildJournalFooterImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: 
          AssetImage('assets/images/salmonela.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage:
          AssetImage('assets/images/beef.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage:
          AssetImage('assets/images/strawberry.jpg'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.cake),
              Icon(Icons.star_border),
              Icon(Icons.music_note),
              //Icon(Icons.movie),
            ],
          ),
        )
      ],
    );
  }
}