import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/pages/calendar_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    Color limao = Color(0xFFE7EC9F);

    var header = 
      Container(
        margin: EdgeInsets.all(16),
        child: 
          Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46),
                  image: DecorationImage(
                    image: NetworkImage("https://randomuser.me/api/portraits/men/42.jpg")
                  )
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 16),
                child: 
                  Row(
                    children: [
                      Text(
                        "Olá, ",
                         style: TextStyle(
                          fontSize: 18
                        ),
                      ),
                      Text(
                        "Pedro!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                    ]
                  )
                ),

              Spacer(),

              Container(
                margin: EdgeInsets.only(right: 12),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      child: Icon(
                        Icons.notifications_none_rounded,
                        size: 28,
                      ),
                    ),

                    Positioned(
                      width: 16,
                      height: 16,
                      right: 0,
                      top: 0,
                      child: 
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFFFB8B8C),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2, color: Colors.black)
                          ),
                          child: 
                            Text(
                              "2",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 10
                              ),
                            ),
                        )
                    )
                  ],
                ),
              ),

              Icon(
                Icons.settings_rounded,
                size: 28,
              )
            ]
          )
      );

    var calendarMin = 
      Container(
        constraints: BoxConstraints(
          maxWidth: 140
        ),
        padding: 	EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black54),
          color: limao,
          borderRadius: BorderRadius.circular(32)
        ),
        child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today_rounded,
                size: 18,
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Hoje",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 18,
              ),
            ],
          ),

      );

    return 
      Scaffold(
        backgroundColor: Colors.white,
        body: 
          SafeArea(
            child: Stack(
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        header,

                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                opaque: false, // Set to false
                                pageBuilder: (_, __, ___) => CalendarPage(),
                              ),
                            );
                            setState(() { });
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 32),
                            alignment: Alignment.center,
                            child: calendarMin
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "09:00",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18
                                 ),
                              ),

                              Container(width: 32),

                              Text(
                                "16:00"
                              ),

                              Container(width: 32),

                              Text(
                                "21:00"
                              ),
                            ]
                          ),
                        ),

                        Transform.rotate(
                          angle: pi / 4 * 0.03,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width + 16,
                            child: Stack(
                              children: [

                                Positioned(
                                  right: 16,
                                  top: 12,
                                  child: 
                                    DottedBorder(
                                      color: Colors.black,
                                      strokeWidth: 2,
                                      radius: Radius.circular(32),
                                      borderType: BorderType.RRect,
                                      child: 
                                        Container(
                                            width: MediaQuery.of(context).size.width - 64,
                                            height: MediaQuery.of(context).size.width - 32,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(32),
                                            ),
                                          )
                                    ),
                                ),

                                Positioned(
                                  left: 16,
                                  child: 
                                    Container(
                                      width: MediaQuery.of(context).size.width - (32 + 8),
                                      height: MediaQuery.of(context).size.width - 32,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(32),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.black
                                        )
                                      ),
                                      child: Column(
                                        children: [
                                          Spacer(),

                                          Stack(
                                            children: [
                                              
                                              Container(
                                                margin: EdgeInsets.only(bottom: 32, right: 16),
                                                width: 160,
                                                padding: EdgeInsets.symmetric(vertical: 8),
                                                decoration: BoxDecoration(
                                                  color: limao,
                                                  border: Border.all(
                                                    width: 2
                                                  ),
                                                  borderRadius: BorderRadius.circular(64)
                                                ),
                                                child: 
                                                  Column(
                                                    children: [
                                                      Text(
                                                        "Level 1",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(top: 8),
                                                        child: Text(
                                                          "0 Day 100%",
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 12
                                                          ),
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                              ),

                                              Positioned(
                                                right: 4,
                                                top: 8,
                                                child: 
                                                  Container(
                                                    width: 46,
                                                    height: 46,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius: BorderRadius.circular(46),
                                                    ),
                                                    child: Icon(
                                                      Icons.add_rounded, 
                                                      color: Colors.white
                                                    ),
                                                  )
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Minhas Estatísticas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2, color: Colors.black)
                          ),
                          child: 
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16),
                                  child: Icon(
                                    Icons.access_time_outlined
                                  ),
                                ),

                                Text(
                                  "09:00",
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),

                                Spacer(),

                                Text(
                                  "200 ml",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18
                                  ),
                                ),
                              ],
                            )
                        )


                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
      );
  }
}