import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/steve.jpg'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.white,
                thickness: 1.0,
              ),
              SizedBox(height: 10.0),
              Text('NAME',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0), //Adding Space between Widgets
              Text(
                'Andy Hwang',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text('MINECRAFT LEVEL',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0), //Adding Space between Widgets
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'testmail@mail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
