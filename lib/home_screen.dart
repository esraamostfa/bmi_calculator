import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () { setState(() {
                        isMale = true;
                      });},
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale? Colors.blue : Colors.grey[350],
                            borderRadius: BorderRadius.circular(9)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/male.png'),
                              width: 91,
                              height: 91,),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:(){ setState(() {
                        isMale = false;
                      }); },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale?  Colors.grey[350] : Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/female.png'),
                              width: 91,
                              height: 91,),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '180',
                          style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      value: 120,
                      onChanged: (value) {
                        print(value.round());
                      },
                      max: 220,
                      min: 80,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(9)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGHT",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 55,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Text(
                                'kg',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){},
                                child: Icon(Icons.remove),
                                mini: true,),
                              SizedBox(width: 9,),
                              FloatingActionButton(onPressed: (){},
                                child: Icon(Icons.add),
                                mini: true,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 9,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(9)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AGE",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          Text(
                            '25',
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){},
                                child: Icon(Icons.remove),
                                mini: true,),
                              SizedBox(width: 9,),
                              FloatingActionButton(onPressed: (){},
                                child: Icon(Icons.add),
                                mini: true,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50,
              onPressed: () {},
              child: const Text(
                'CALCULATE',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
