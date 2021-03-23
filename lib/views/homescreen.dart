import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void pressedButton(String pressButton) {
    print(pressButton);
  }

  Widget buildButton(String num) {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[200],
          child: Text(
            num,
            style: TextStyle(),
          ),
          onPressed: () {
            pressedButton(num);
          },
        ),
      ),
    );
  }

  Widget buildSideButton(String sym) {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[400],
          child: Text(
            sym,
            style: TextStyle(),
          ),
          onPressed: () {
            pressedButton(sym);
          },
        ),
      ),
    );
  }

  Widget buildDivisionButton() {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[400],
          child: Text(
            '/',
            style: TextStyle(),
          ),
          onPressed: () {
            pressedButton('/');
          },
        ),
      ),
    );
  }

  Widget buildMultiplicationButton() {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[400],
          child: Text('x'),
          onPressed: () {
            pressedButton('X');
          },
        ),
      ),
    );
  }

  Widget buildEqualButton(String sym) {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[800],
          child: Text(
            sym,
            style: TextStyle(),
          ),
          onPressed: () {
            pressedButton(sym);
          },
        ),
      ),
    );
  }

  Widget buildZeroButton(String sys) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 50,
        padding: EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[200],
          child: Text(
            sys,
            style: TextStyle(),
          ),
          onPressed: () {
            pressedButton(sys);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator',
          style: TextStyle(color: Colors.black26),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.4255645,
              alignment: Alignment.bottomRight,
              child: Text(
                "This a Calcu",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.5,
              color: Colors.grey[100],
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 9),
                  Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey),
                  SizedBox(height: 10),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5),
                        buildButton('C'),
                        buildButton('()'),
                        buildButton('%'),
                        buildDivisionButton(),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5),
                        buildButton('7'),
                        buildButton('8'),
                        buildButton('9'),
                        buildMultiplicationButton(),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5),
                        buildButton('4'),
                        buildButton('5'),
                        buildButton('6'),
                        buildSideButton('-'),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5),
                        buildButton('1'),
                        buildButton('2'),
                        buildButton('3'),
                        buildSideButton('+'),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 5),
                        buildZeroButton('0'),
                        buildButton('.'),
                        buildEqualButton('='),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
