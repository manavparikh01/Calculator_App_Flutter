//import 'dart:html';

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
  bool isOperator = true;
  bool isOperandPlus = false;
  double num3 = 0;
  bool isOperandMinus = false;
  bool isOperandMultiply = false;
  bool isOperandDivision = false;
  bool isEqual = false;
  final snackBar = SnackBar(content: Text('Sorry Under construction'));
  String val3 = "";
  int val2length = 0;
  bool isAlreadyPresent = false;
  bool isOperandBracket = false;
  bool isOperandModulus = false;

  void pressedBackButton() {
    print('<');
    setState(() {
      val3 = '';
    });
    if (isEqual == true) {
      if (num3.toString().endsWith('.0')) {
        setState(() {
          val1 = num3.toString().substring(0, num3.toString().length - 2);
        });
      } else {
        setState(() {
          val1 = num3.toString();
        });
      }
      num3 = 0.0;
      isEqual = false;
    }
    if (val1 == '') {
      setState(() {
        val1 = '';
      });
    } else {
      val1length = val1.length;
      val2length = val2.length;
      if (val2length <= 1) {
        setState(() {
          val1 = val1.substring(0, val1length - 1);
          val2 = '';
          num2 = 0.0;
          num3 = 0.0;
        });
      } else {
        if (isOperandPlus == true) {
          val2 = val2.substring(0, val2length - 1);
          num2 = double.tryParse(val2);
          setState(() {
            val1 = val1.substring(0, val1length - 1);
            num3 = num1 + num2;
          });
        } else if (isOperandMinus == true) {
          val2 = val2.substring(0, val2length - 1);
          num2 = double.tryParse(val2);
          setState(() {
            val1 = val1.substring(0, val1length - 1);
            num3 = num1 - num2;
          });
        } else if (isOperandMultiply == true) {
          val2 = val2.substring(0, val2length - 1);
          num2 = double.tryParse(val2);
          setState(() {
            val1 = val1.substring(0, val1length - 1);
            num3 = num1 * num2;
          });
        } else if (isOperandDivision == true) {
          val2 = val2.substring(0, val2length - 1);
          num2 = double.tryParse(val2);
          setState(() {
            val1 = val1.substring(0, val1length - 1);
            num3 = num1 / num2;
          });
        } else if (isOperandModulus == true) {
          val2 = val2.substring(0, val2length - 1);
          num2 = double.tryParse(val2);
          setState(() {
            val1 = val1.substring(0, val1length - 1);
            num3 = num1 % num2;
          });
        } else {
          setState(() {
            val1 = val1.substring(0, val1length - 1);
            val2 = val2.substring(0, val2length - 1);
            num2 = double.tryParse(val2);
          });
        }
      }
    }
  }

  void pressedButton(String value) {
    print(value);
    isOperator = false;
    val1length = val1.length;
    if (val1length == 0) {
      setState(() {
        val1 = "";
        num1 = 0.0;
        num2 = 0.0;
        val2 = "";
        val1length = 0;
        isOperator = true;
        isOperandPlus = false;
        num3 = 0;
        isOperandMinus = false;
        isOperandMultiply = false;
        isOperandDivision = false;
        isOperandModulus = false;
        isEqual = false;
        val3 = "";
        val2length = 0;
        if (value == '.') {
          val1 = '0.';
        }
      });
    }

    setState(() {
      val3 = '';
    });

    if (val1.startsWith('0') && !(val1.contains('.'))) {
      if (value == '0') {
        setState(() {
          val1 = '0';
        });
      } else {
        if (isAlreadyPresent == true) {
          setState(() {
            num1 = num3;
            val2 = '';
            num2 = 0.0;
          });
          isAlreadyPresent = false;
        }
        if (isOperandPlus == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 + num2;
          });
          // print(num1);
          // print(num2);
          // print(num3);
        }
        if (isOperandMinus == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 - num2;
          });
          // print(num1);
          // print(num2);
          // print(num3);
        }
        if (isOperandMultiply == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 * num2;
          });
        }
        if (isOperandDivision == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 / num2;
          });
        }
        if (isOperandModulus == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 % num2;
          });
        }
        setState(() {
          val1 = val1 + value;
          //val2 = val2 + num3.toString();
        });
      }
    } else if (val1.startsWith('0.')) {
      if (value == '.') {
        setState(() {
          val1 = '0.';
        });
      } else {
        if (isAlreadyPresent == true) {
          setState(() {
            num1 = num3;
            val2 = '';
            num2 = 0.0;
          });
          isAlreadyPresent = false;
        }
        if (isOperandPlus == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 + num2;
          });
          // print(num1);
          // print(num2);
          // print(num3);
        }
        if (isOperandMinus == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 - num2;
          });
          // print(num1);
          // print(num2);
          // print(num3);
        }
        if (isOperandMultiply == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 * num2;
          });
        }
        if (isOperandDivision == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 / num2;
          });
        }
        if (isOperandModulus == true) {
          val2 = val2 + value;
          num2 = double.tryParse(val2);
          setState(() {
            num3 = num1 % num2;
          });
        }
        setState(() {
          val1 = val1 + value;
          //val2 = val2 + num3.toString();
        });
      }
    } else {
      if (isAlreadyPresent == true) {
        setState(() {
          num1 = num3;
          val2 = '';
          num2 = 0.0;
          print('hello');
          print(num1);
        });
        isAlreadyPresent = false;
      }
      if (isOperandPlus == true) {
        val2 = val2 + value;
        num2 = double.tryParse(val2);
        print(num1);
        print(num2);
        print(num3);
        setState(() {
          num3 = num1 + num2;
        });
        print(num1);
        print(num2);
        print(num3);
      }
      if (isOperandMinus == true) {
        val2 = val2 + value;
        num2 = double.tryParse(val2);
        setState(() {
          num3 = num1 - num2;
        });
        // print(num1);
        // print(num2);
        // print(num3);
      }
      if (isOperandMultiply == true) {
        val2 = val2 + value;
        num2 = double.tryParse(val2);
        setState(() {
          num3 = num1 * num2;
        });
      }
      if (isOperandDivision == true) {
        val2 = val2 + value;
        num2 = double.tryParse(val2);
        setState(() {
          num3 = num1 / num2;
        });
      }
      if (isOperandModulus == true) {
        val2 = val2 + value;
        num2 = double.tryParse(val2);
        setState(() {
          num3 = num1 % num2;
        });
      }
      setState(() {
        val1 = val1 + value;
        //val2 = val2 + num3.toString();
      });
    }
  }

  void pressedSideButton(String value) {
    print(value);
    if (val1 == '' && num3 == 0.0) {
    } else {
      setState(() {
        val3 = '';
      });
      if (isEqual == false) {
        if (val1.substring(val1.length - 1, val1.length) == '+' ||
            val1.substring(val1.length - 1, val1.length) == '-' ||
            val1.substring(val1.length - 1, val1.length) == 'x' ||
            val1.substring(val1.length - 1, val1.length) == '/' ||
            val1.substring(val1.length - 1, val1.length) == '%') {
          val1 = val1.substring(0, val1.length - 1);
        }
      }
      if (isEqual == true) {
        if (num3.toString().endsWith('.0')) {
          setState(() {
            val1 = num3.toString().substring(0, num3.toString().length - 2);
            val2 = '';
            num2 = 0.0;
            num3 = 0.0;
          });
        } else {
          setState(() {
            val1 = num3.toString();
            val2 = '';
            num2 = 0.0;
            num3 = 0.0;
          });
        }
      }
      if (isOperandPlus == true ||
          isOperandMinus == true ||
          isOperandMultiply == true ||
          isOperandDivision == true ||
          isOperandModulus == true) {
        isOperandPlus = false;
        isOperandMinus = false;
        isOperandMultiply = false;
        isOperandDivision = false;
        isOperandModulus = false;
        isEqual = false;
        setState(() {
          val2 = '';
          num2 = 0.0;
        });
        print('iamhere');
        isAlreadyPresent = true;
      }
      if (value == '+') {
        isOperandPlus = true;
        isOperandMinus = false;
        isOperandMultiply = false;
        isOperandDivision = false;
        isOperandModulus = false;
        isEqual = false;
      }
      if (value == '-') {
        isOperandMinus = true;
        isOperandPlus = false;
        isOperandMultiply = false;
        isOperandDivision = false;
        isOperandModulus = false;
        isEqual = false;
      }
      if (value == 'x') {
        isOperandMultiply = true;
        isOperandPlus = false;
        isOperandMinus = false;
        isOperandDivision = false;
        isOperandModulus = false;
        isEqual = false;
      }
      if (value == '/') {
        isOperandDivision = true;
        isOperandMultiply = false;
        isOperandPlus = false;
        isOperandMinus = false;
        isOperandModulus = false;
        isEqual = false;
      }
      if (value == '%') {
        isOperandModulus = true;
        isOperandDivision = false;
        isOperandMultiply = false;
        isOperandPlus = false;
        isOperandMinus = false;
        isEqual = false;
      }
      num1 = double.tryParse(val1);
      setState(() {
        val1 = val1 + value;
      });
      isOperator = false;
    }
  }

  void pressedTopButton(String value) {
    print(value);
    if (value == 'C') {
      setState(() {
        val1 = '';
        val2 = '';
        num3 = 0.0;
        num1 = 0.0;
        num2 = 0.0;
        isOperandPlus = false;
        isOperandMinus = false;
        isOperandMultiply = false;
        isEqual = false;
        val3 = '';
      });
    }
    if (value == '()') {
      setState(() {
        val3 = 'Not working Wait for future updates';
      });
    }
    if (value == '%') {
      pressedSideButton('%');
    }
  }

  void pressedEqualButton() {
    isEqual = true;
    setState(() {
      val1 = '';
      val3 = '';
    });
    num1 = 0.0;
    num2 = 0.0;
    isOperandPlus = false;
    isOperandMinus = false;
    isOperandMultiply = false;
    isOperandDivision = false;
  }

  Widget buildButton(String num) {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 0),
        color: Colors.grey[100],
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[200]),
            elevation: MaterialStateProperty.all<double>(0),
          ),

          //color: Colors.grey[200],
          child: Text(
            num,
            style: TextStyle(color: Colors.black),
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
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[400]),
            elevation: MaterialStateProperty.all<double>(0),
          ),
          child: Text(
            sym,
            style: TextStyle(color: Colors.black),
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
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[400]),
            elevation: MaterialStateProperty.all<double>(0),
          ),
          child: Text(
            sym,
            style: TextStyle(color: Colors.black),
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
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[800]),
            elevation: MaterialStateProperty.all<double>(0),
          ),
          child: Text(
            sym,
            style: TextStyle(color: Colors.grey[100]),
          ),
          onPressed: () {
            pressedEqualButton();
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
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[200]),
            elevation: MaterialStateProperty.all<double>(0),
          ),
          child: Text(
            sys,
            style: TextStyle(color: Colors.black),
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
          child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[100]),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        child: val1 == '' && num3 == 0.0
            ? Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.grey[500],
              )
            : Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
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
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Calculator',
      //     style: TextStyle(color: Colors.black26),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.grey[200],
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: (MediaQuery.of(context).size.height) * 1,
          child: Column(
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                width: double.infinity,
                color: Colors.grey[200],
                padding: EdgeInsets.all(20),
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.5,
                alignment: Alignment.bottomRight,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      flex: isEqual ? 0 : 1,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(val1,
                            // style: isOperator
                            //     ? TextStyle(
                            //         color: Colors.black87,
                            //         fontSize: 30,
                            //         fontWeight: FontWeight.w600)
                            //     : TextStyle(
                            //         color: Colors.black45,
                            //         fontSize: 30,
                            //         fontWeight: FontWeight.w600)),
                            style: val1 != ''
                                ? val1.length > 2
                                    ? val1.substring(val1.length - 1,
                                                    val1.length) ==
                                                '%' ||
                                            val1.substring(val1.length - 1,
                                                    val1.length) ==
                                                '/' ||
                                            val1.substring(val1.length - 1,
                                                    val1.length) ==
                                                'x' ||
                                            val1.substring(val1.length - 1,
                                                    val1.length) ==
                                                '+' ||
                                            val1.substring(val1.length - 1,
                                                    val1.length) ==
                                                '-'
                                        ? TextStyle(
                                            color: Colors.black87,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600)
                                        : TextStyle(
                                            color: Colors.black45,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600)
                                    : TextStyle(
                                        color: Colors.black45,
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
                        duration: Duration(milliseconds: 1000),
                        alignment: Alignment.bottomRight,
                        child:
                            val3.contains('Not working Wait for future updates')
                                ? Text(val3,
                                    style: TextStyle(
                                        fontSize: isEqual ? 17 : 17,
                                        color: isEqual
                                            ? Colors.black87
                                            : Colors.black54,
                                        fontWeight: isEqual
                                            ? FontWeight.w400
                                            : FontWeight.normal))
                                //? Scaffold.of(context).showSnackBar(snackBar)
                                : num3 == 0.0
                                    ? Text('')
                                    : num3.toString().endsWith('.0')
                                        ? Text(
                                            num3.toString().substring(
                                                0, num3.toString().length - 2),
                                            style: TextStyle(
                                                fontSize: isEqual ? 40 : 20,
                                                color: isEqual
                                                    ? Colors.black87
                                                    : Colors.black54,
                                                fontWeight: isEqual
                                                    ? FontWeight.w400
                                                    : FontWeight.normal))
                                        : Text(num3.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: isEqual ? 40 : 20,
                                                color: isEqual
                                                    ? Colors.black87
                                                    : Colors.black54,
                                                fontWeight: isEqual
                                                    ? FontWeight.w400
                                                    : FontWeight.normal)),
                      ),
                    ),
                    Expanded(
                      flex: isEqual ? 2 : 0,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        child: Container(),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.5367,
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
      ),
    );
  }
}
