import 'package:flutter/material.dart';

import '../widgets/upcoming_schedule.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePage();
}

class _SchedulePage extends State<SchedulePage> {
  int _buttonind = 0;
  final scheduleWidgets = [
    UpcomingSchedule(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Schedule",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 238, 51, 51),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonind = 0;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          color: _buttonind == 0
                              ? Color.fromARGB(255, 244, 59, 74)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: _buttonind == 0
                                  ? Colors.white
                                  : Colors.black38),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonind = 1;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          color: _buttonind == 1
                              ? Color.fromARGB(255, 244, 59, 74)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: _buttonind == 1
                                  ? Colors.white
                                  : Colors.black38),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonind = 2;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          color: _buttonind == 2
                              ? Color.fromARGB(255, 244, 59, 74)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Canceled",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: _buttonind == 2
                                  ? Colors.white
                                  : Colors.black38),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              scheduleWidgets[_buttonind],
            ],
          )),
    );
  }
}
