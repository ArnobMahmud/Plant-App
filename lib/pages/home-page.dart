import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32a05f),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100.0)),
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.blue,
                              size: 30,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            child: Text(
                              "Fiddle Leaf",
                              style: TextStyle(
                                  color: Color(0xff0e1b30),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '10" Nursery Pot',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text('\$',
                                    style: TextStyle(
                                        color: Color(0xff343434),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text('85',
                                  style: TextStyle(
                                      color: Color(0xff343434),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 52.0)),
                            ],
                          ),
                        ),
                      ])),
            ),
          ),
          SizedBox(
            height: 140,
          ),
        ],
      ),
    );
  }
}
