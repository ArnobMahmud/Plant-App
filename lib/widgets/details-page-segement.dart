import 'package:flutter/material.dart';
import 'package:plant_app/color/colors.dart';

class ProductSegment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: [
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 40.0),
                  Text(
                    'Delivery Information',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            );
  }
}