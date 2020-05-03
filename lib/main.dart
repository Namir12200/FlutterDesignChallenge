import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertransactionsapp/Wallet.dart';
import 'package:fluttertransactionsapp/Income.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/' : (context) => Home(),
    '/My Wallet' : (context) => MyWallet(),
    '/Income' : (context) => Income()
  },
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            elevation: 0.0,
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.transparent,
                tabs: [
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    margin: EdgeInsets.only(left: 50.0, bottom: 20.0),
                    child: Text("This month"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    margin: EdgeInsets.only(right: 50.0, bottom: 20.0),
                    child: Text("Schedule"),
                  )
                ]
            ),
            backgroundColor: Color.fromRGBO(7, 23, 48, 1.0),
            title: Text("Transactions"),
            centerTitle: true,
            actions: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search,)
              )
            ],
          ),
          body: Container(
            color: Color.fromRGBO(7, 23, 48, 1.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/BackgroundImage.png'),
                        fit: BoxFit.cover
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15.0,),
                          Container(
                            width: width*0.9,
                            height: 80.0,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.shopping_basket,
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Shopping",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 15.0),
                                        child: Text("08/10/2018 12:10 pm",
                                          style: TextStyle(
                                            color: Colors.grey
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(right: 10.0),
                                            child: Text("\$120.00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30.0,
                                            width: 40.0,
                                            margin: EdgeInsets.only(right: 10.0),
                                            padding: EdgeInsets.only(bottom: 10.0,),
                                            child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50.0)
                                              ),
                                              color: Colors.deepOrange,
                                              child: Container(
                                                child: Icon(Icons.check,
                                                  size: 15.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onPressed: () {}
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            width: width*0.9,
                            height: 80.0,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.local_dining,
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Food",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 15.0),
                                        child: Text("10/10/2018 10:20 am",
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(right: 10.0),
                                            child: Text("\$147.00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30.0,
                                            width: 40.0,
                                            margin: EdgeInsets.only(right: 10.0),
                                            padding: EdgeInsets.only(bottom: 10.0,),
                                            child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50.0)
                                                ),
                                                color: Colors.deepOrange,
                                                child: Container(
                                                  child: Icon(Icons.more_horiz,
                                                    size: 15.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                onPressed: () {}
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            width: width*0.9,
                            height: 80.0,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.local_gas_station,
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Fuel",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 15.0),
                                        child: Text("12/10/2018 8:10 pm",
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(right: 10.0),
                                            child: Text("\$288.00",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30.0,
                                            width: 40.0,
                                            margin: EdgeInsets.only(right: 10.0),
                                            padding: EdgeInsets.only(bottom: 10.0,),
                                            child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50.0)
                                                ),
                                                color: Colors.deepOrange,
                                                child: Container(
                                                  child: Icon(Icons.check,
                                                    size: 15.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                onPressed: () {}
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            width: width*0.9,
                            height: 80.0,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.directions_car,
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Travel",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 15.0),
                                        child: Text("18/10/2018 10:30 am",
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(right: 10.0),
                                            child: Text("\$547.00",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30.0,
                                            width: 40.0,
                                            margin: EdgeInsets.only(right: 10.0),
                                            padding: EdgeInsets.only(bottom: 10.0,),
                                            child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50.0)
                                                ),
                                                color: Colors.deepOrange,
                                                child: Container(
                                                  child: Icon(Icons.check,
                                                    size: 15.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                onPressed: () {}
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 60.0,),
                          Container(
                            width: width*0.65,
                            height: 60.0,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/My Wallet');
                              },
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)
                              ),
                              child: Text("Manage Wallet",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Align(
            child : FloatingActionButton(
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.add),
              onPressed: () {},
            ),
            alignment: Alignment(1.05, -0.75),
          ),
        ),
      ),
    );
  }
}

