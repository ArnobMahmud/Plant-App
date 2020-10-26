import 'package:flutter/material.dart';
import 'package:plant_app/color/colors.dart';
import 'package:plant_app/db/temp-db.dart';
import 'package:plant_app/pages/details-page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greenColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 8.0),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: darkBlue,
                              size: 29.0,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            width: 300.0,
                            child: Text(
                              'Plant Trees Save  World',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0,
                                  color: darkBlue),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            '30" Nursery Pots',
                            style: TextStyle(color: darkBlue),
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text('\$',
                                    style: TextStyle(
                                        color: orange,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(width: 4.0),
                              Text('85',
                                  style: TextStyle(
                                      color: orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 52.0)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Spacer(
                            flex: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailsScreen()));
                                },
                                backgroundColor: darkColor,
                                child: Icon(Icons.shopping_cart, color: orange,),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 2,
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: ClipRRect(
                                  borderRadius:  BorderRadius.all(Radius.circular(50)),
                                  child: Image.network(
                                    productImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Text('Planting', style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          decoration: BoxDecoration(
                              color: darkColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '0.35',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42.0),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'L',
                                    style: TextStyle(color: Colors.white54),
                                  )
                                ],
                              ),
                              Text(
                                'water',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          decoration: BoxDecoration(
                              color: darkColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '98',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42.0),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'F',
                                    style: TextStyle(color: Colors.white54),
                                  )
                                ],
                              ),
                              Text(
                                'Sunshine',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
