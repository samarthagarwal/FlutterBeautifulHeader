import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new FlatButton(
            onPressed: () => {},
            child: new Icon(
              Icons.menu,
              color: Colors.white,
            )),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //title: new Text("Design Inspiration"),
        actions: <Widget>[new Icon(Icons.more_horiz)],
      ),
      backgroundColor: Colors.white,
      body: new Stack(
        children: [
          new Container(
            child: new Transform.translate(
              offset: new Offset(0.0, -56.0),
              child: new ClipPath(
                clipper: new MyClipper(),
                child: new Stack(
                  children: [
                    new Image.network(
                      "https://thumbs.dreamstime.com/b/sky-birds-background-5725652.jpg",
                      fit: BoxFit.cover,
                    ),
                    new Opacity(
                      opacity: 0.5,
                      child: new Container(color: Colors.blueGrey),
                    ),
                    new Transform.translate(
                      offset: Offset(0.0, 80.0),
                      child: new ListTile(
                        leading: new CircleAvatar(
                          child: new Container(
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/3234592?s=460&v=4"),
                              ),
                            ),
                          ),
                        ),
                        title: new Text(
                          "Samarth Agarwal",
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              letterSpacing: 2.0),
                        ),
                        subtitle: new Text(
                          "Lead Designer",
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          new Positioned(
            top: 200.0,
            left: 320.0,
            child: new FloatingActionButton(
              onPressed: () => {},
              backgroundColor: Colors.pinkAccent,
              child: new Icon(Icons.sort),
            ),
          ),
          new Transform.translate(
            offset: Offset(0.0, 220.0),
            child: new Column(
              children: <Widget>[],
            ),
          ),
          new Container(
              child: new Column(
            children: <Widget>[
              new Container(height: 220.0),
              new Expanded(
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      title: new Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: new Text(
                          "My Tasks",
                          style: new TextStyle(fontSize: 30.0),
                        ),
                      ),
                      subtitle: new Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 30.0),
                        child: new Text(
                          "February 20, 2018",
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                      ),
                    ),
                    new Flexible(
                      child: new ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          new TaskTile(
                            color: Colors.redAccent,
                          ),
                          new TaskTile(
                            color: Colors.blueAccent,
                          ),
                          new TaskTile(
                            color: Colors.greenAccent,
                          ),
                          new TaskTile(
                            color: Colors.purpleAccent,
                          ),
                          new TaskTile(
                            color: Colors.yellowAccent,
                          ),
                          new TaskTile(
                            color: Colors.deepPurpleAccent,
                          ),
                          new TaskTile(
                            color: Colors.deepOrangeAccent,
                          ),
                          new TaskTile(
                            color: Colors.green,
                          ),
                          new TaskTile(
                            color: Colors.redAccent,
                          ),
                          new TaskTile(
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height / 2);
    p.lineTo(0.0, size.height / 3);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class TaskTile extends StatelessWidget {
  final Color color;

  TaskTile({Key key, this.color});

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: this.color,
        radius: 8.0,
      ),
      title: new Padding(
        padding: const EdgeInsets.all(4.0),
        child: new Text(
          "Make new icons",
          style: new TextStyle(fontSize: 18.0),
        ),
      ),
      subtitle: new Padding(
        padding: const EdgeInsets.all(4.0),
        child: new Text(
          "WebApp",
          style: new TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
      ),
      trailing: new Text(
        "5pm",
        style: new TextStyle(fontSize: 12.0, color: Colors.grey),
      ),
    );
  }
}
