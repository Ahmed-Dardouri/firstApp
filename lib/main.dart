import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
  home: ninjaCard(),
));
class ninjaCard extends StatefulWidget {
  const ninjaCard({Key? key}) : super(key: key);

  @override
  _ninjaCardState createState() => _ninjaCardState();
}

class _ninjaCardState extends State<ninjaCard> {

  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/person.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'Ahmed',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'FAMILY NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'DARDOURI',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'test@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

