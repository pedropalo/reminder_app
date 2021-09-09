import 'package:blur/blur.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({ Key? key }) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {

  DateTime data = DateTime.now();


  _calandario() {
    return Container(
      height: 320 ,
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          setState(() {
            data = date;
          });
        },
        weekendTextStyle: TextStyle(
          color: Colors.black.withOpacity(0.80),
        ),
        thisMonthDayBorderColor: Colors.transparent,
        weekFormat: false,
        selectedDateTime: data,
        daysHaveCircularBorder: true,
        dayButtonColor: Colors.transparent,
        todayButtonColor: Colors.blue,
        todayTextStyle: TextStyle(color: Colors.black.withOpacity(0.80)),
        selectedDayButtonColor:  Colors.blue,
        selectedDayBorderColor: Colors.transparent,
        selectedDayTextStyle: TextStyle(color: Colors.white),
        headerTextStyle: TextStyle(color: Colors.black, fontSize: 16),
        dayPadding: 7,
        iconColor: Colors.black,
        todayBorderColor: Colors.transparent,
        weekdayTextStyle: TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontWeight: FontWeight.w900
        ),
        daysTextStyle: TextStyle(
          color: Colors.black.withOpacity(0.80),
        ),
        isScrollable: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            // padding: EdgeInsets.only(top: 128 + 32),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 128 + 32, 
                      color: Colors.transparent, 
                      width: MediaQuery.of(context).size.width,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Blur(
                        blur: 2.5,
                        blurColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: 
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height - (128 + 16 + 32),

                            )
                        ),
                      ),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () {

                  },
                  child: 
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width + (16 + 128),
                    padding: EdgeInsets.only(top: 128 + 32),
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
                                  _calandario()
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}