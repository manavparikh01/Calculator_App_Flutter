import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String val1 = "";
  double num1 = 0.0;
  double num2 = 0.0;
  String val2 = "";
  int val1length = 0;
  bool isOperator = false;

  void pressedButton(String value) {
    print(value);
    isOperator = false;
    if (value == '0') {
      setState(() {
        val1 = '0';
      });
    } else {
      setState(() {
        val1 = val1 + value;
      });
    }
  }

  void pressedSideButton(String value) {
    print(value);
    isOperator = true;
    setState(() {
      val1 = val1 + value;
    });
  }

  void pressedTopButton(String value) {
    print(value);
    if (value == 'C') {
      setState(() {
        val1 = '';
      });
    }
  }

  void pressedBackButton() {
    print('<');
    if (val1 == '') {
      setState(() {
        val1 = '';
      });
    } else {
      val1length = val1.length;

      setState(() {
        val1 = val1.substring(0, val1length - 1);
      });
    }
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
            pressedSideButton(sym);
          },
        ),
      ),
    );
  }

  // Widget buildDivisionButton() {
  //   return Expanded(
  //     child: Container(
  //       height: 50,
  //       padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
  //       color: Colors.grey[100],
  //       child: FlatButton(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         color: Colors.grey[400],
  //         child: Text(
  //           '/',
  //           style: TextStyle(),
  //         ),
  //         onPressed: () {
  //           pressedButton('/');
  //         },
  //       ),
  //     ),
  //   );
  // }

  // Widget buildMultiplicationButton() {
  //   return Expanded(
  //     child: Container(
  //       height: 50,
  //       padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
  //       color: Colors.grey[100],
  //       child: FlatButton(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         color: Colors.grey[400],
  //         child: Text('x'),
  //         onPressed: () {
  //           pressedButton('X');
  //         },
  //       ),
  //     ),
  //   );
  // }

  Widget buildTopButton(String sym) {
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
            pressedTopButton(sym);
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
            style: TextStyle(color: Colors.grey[100]),
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

  Widget buildBackButton() {
    return Expanded(
      flex: 1,
      child: Container(
          child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        onPressed: () {
          pressedBackButton();
        },
      )),
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
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              width: double.infinity,
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.4255645,
              alignment: Alignment.bottomRight,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      alignment: Alignment.bottomRight,
                      child: Text(val1,
                          style: isOperator
                              ? TextStyle(
                                  color: Colors.black87,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)
                              : TextStyle(
                                  color: Colors.black45,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      alignment: Alignment.bottomRight,
                      child: Text('This da Calc'),
                    ),
                  ),
                ],
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
                        buildBackButton(),
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
                        buildTopButton('C'),
                        buildTopButton('()'),
                        buildTopButton('%'),
                        buildSideButton('/'),
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
                        buildSideButton('x'),
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
