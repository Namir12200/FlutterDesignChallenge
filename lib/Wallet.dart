import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class MyWallet extends StatefulWidget {

  final bool swap;

  MyWallet({Key key, this.swap}) : super(key: key);
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  List expenses = [
    {
      'icon' : Icons.shopping_basket,
      'text' : "Shop"
    },
    {
      'icon' : Icons.local_dining,
      'text' : "Food"
    },
    {
      'icon' : Icons.directions_car,
      'text' : "Travel"
    },
    {
      'icon' : Icons.home,
      'text' : "Rent"
    },
    {
      'icon' : Icons.local_gas_station,
      'text' : "Fuel"
    },
    {
      'icon' : Icons.payment,
      'text' : "Bills"
    },
    {
      'icon' : Icons.local_drink,
      'text' : "Party"
    },
    {
      'icon' : Icons.healing,
      'text' : "Health"
    },
    {
      'icon' : Icons.local_atm,
      'text' : "Loan"
    },
    {
      'icon' : Icons.add,
      'text' : "New"
    }
  ];

  bool swap = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Income');
            },
            child: Row(
              children: <Widget>[
                Text('\$00.00',
                  style: TextStyle(color: Colors.white),),
                Icon(Icons.arrow_right,
                  color: Colors.white,
                )
              ],
            ),
            color: Colors.deepOrange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)
            ),
          ),
        ),
        Container(
          height: 50,
          child: VerticalDivider(
            color: Colors.black12,
            thickness: 2,
            width: 20.0,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
          child: FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Text('\$00.00'),
                Icon(Icons.arrow_right)
              ],
            ),
            color: Colors.purple.withOpacity(0.05),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)
            ),
          ),
        ),
      ],
    );
    Widget swapWidget;
    if (swap) {
      swapWidget = RoundedProgressBar(
        childRight: Text("\$452",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0
          ),
        ),
        percent: 50,
        style: RoundedProgressBarStyle(
          borderWidth: 0,
          widthShadow: 0,
        ),
        theme: RoundedProgressBarTheme.red,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      );
    } else {
      swapWidget = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Income');
              },
              child: Row(
                children: <Widget>[
                  Text('\$00.00',
                    style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
              color: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)
              ),
            ),
          ),
          Container(
            height: 50,
            child: VerticalDivider(
              color: Colors.black12,
              thickness: 2,
              width: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text('\$00.00'),
                  Icon(Icons.arrow_right)
                ],
              ),
              color: Colors.purple.withOpacity(0.05),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 23, 48, 1.0),
        title: Text("My Wallet"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: Color.fromRGBO(7, 23, 48, 1.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0,),
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/BackgroundImage.png'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30.0,),
                          Container(
                            width: width*0.9,
                            color: Colors.white,
                            child: DefaultTabController(
                              length: 2,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20.0,),
                                  TabBar(
                                    indicatorSize: TabBarIndicatorSize.label,
                                    indicatorColor: Colors.black,
                                    tabs: <Widget>[
                                      Text("Income",
                                        style: TextStyle(
                                            color: Colors.black
                                        ),
                                      ),
                                      Text("Expenses",
                                        style: TextStyle(
                                            color: Colors.black
                                        ),
                                      ),
                                    ],
                                  ),
                                  swapWidget,
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                            width: width*0.9,
                            color: Colors.white,
                            child: GridView.count(
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              children: List.generate(expenses.length, (index) {
                                return FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      swap = true;
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(expenses[index]['icon']),
                                      Text(expenses[index]['text']),
                                    ],
                                  ),
                                );
                              })
                            ),
                          ),
                        ],
                      )
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
