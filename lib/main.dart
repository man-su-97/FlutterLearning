import "package:flutter/material.dart";

void main() => runApp(
    MyFirstApp()); //sigma or arrow section function, it used to write code in one-line...

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyFirstAppState();
  }
}

class MyFirstAppState extends State<MyFirstApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var Questions = [
      " what is your favourite color ?",
      " what is your favourite animal ?",
      " what is your favourite food ?",
      " what is your favourite Flower ?",
      " what is your favourite Bike ?",
      " what is your favourite Car ?"
    ]; // questions is a list of string

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Bingo !"),
        ),
        body: Column(
          children: [
            Text(Questions.elementAt(
                questionIndex)), // we can also use this -- questions[questionIndex]
            RaisedButton(
              child: Text("Answer 1"),
              onPressed:
                  answerQuestion, //answerQuestion() is function but we are not passing function instead we are passing pointer of that function. by this we are passing name of the function....
            ),
            RaisedButton(
                child: Text("Answer 2"),
                onPressed: () => print(
                    "answer 2 chosen") //here we are using anonymous function which is only used in this part of code,,,,not used in other parts so we dont have to declare it before hand.
                ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                //..
                print('Answer 3 chosen');
              }, //this is also a implementation menthod of anonymous function
            ),
          ],
        ),
      ),
    );
  }
}
