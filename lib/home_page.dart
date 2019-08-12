import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {

 @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var num1=0, num2=0, result=0;

final TextEditingController t1 = new TextEditingController(text: "0");
final TextEditingController t2 = new TextEditingController(text: "0");


  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result= num1+num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result= num1-num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result= num1*num2;
    });
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result= num1 ~/ num2;
    });
  }

  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output :$result", 
            style: new TextStyle(fontSize: 20.0, 
            fontWeight: FontWeight.bold, color: 
            Colors.purple),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 1"
              ),
              controller: t1,
            ),
               new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 2"
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doAddition,
                ),
                 new RaisedButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: doSub,
                ), 
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: doMul,
                ),
                 new RaisedButton(
                  child: new Text("%"),
                  color: Colors.greenAccent,
                  onPressed: doDiv,
                ), 
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: new Text("clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}