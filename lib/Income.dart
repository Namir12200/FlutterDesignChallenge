import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Income extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(7, 23, 48, 1.0),
      ),
      body: Container(
        color: Color.fromRGBO(7, 23, 48, 1.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Images/BackgroundImage.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0,),
                    Center(
                      child: Container(
                        width: width*0.9,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10.0,),
                            DefaultTabController(
                                length: 1,
                                child: TabBar(
                                  indicatorColor: Colors.black,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  tabs: [
                                    Text("Income",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ]
                                )
                            ),
                            SizedBox(height: 20.0,),
                            Container(
                              width: width*0.25,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)
                                ),
                                onPressed: () {},
                                color: Colors.deepOrange,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("\$452",
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                    ),
                                    Icon(Icons.arrow_right,
                                    color: Colors.white,
                                    ),
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Center(
                      child: Container(
                        width: width*0.9,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0),
                                  child: Icon(Icons.account_balance_wallet)
                                ),
                                Container(
                                  width: width*0.7,
                                  height: 40.0,
                                  margin: EdgeInsets.all(10.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: Colors.blueGrey, width: 1.0)
                                      )
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                    child: Icon(Icons.location_on)
                                ),
                                Container(
                                  width: width*0.7,
                                  height: 40.0,
                                  margin: EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: BorderSide(color: Colors.blueGrey, width: 1.0)
                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
