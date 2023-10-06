import 'package:digicare/modules/appointment_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final symptoms = [
    "Skin Irritation",
    "Spot on the Skin",
    "Hair Fall",
    "Fever"
  ];
  final List img = [
    "doctor_1.jpg",
    "doctor_2.jpg",
    "doctor_3.jpg",
    "doctor_9.jpg",
    "doctor_4.jpg",
    "doctor_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Joe",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/profile1.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(189, 248, 4, 41),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 4,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 140, 1, 8),
                                size: 35,
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Want to travel ?",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Make an appointment",
                              style: TextStyle(
                                  color: Color.fromARGB(160, 255, 255, 255)),
                            ),
                          ],
                        )),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color(0xFFF0EEFA),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.home_filled,
                                color: Color.fromARGB(255, 244, 59, 74),
                                size: 35,
                              )),
                          SizedBox(height: 30),
                          Text(
                            "Home Visit",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Call the doctor at home",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("What are your symptoms?",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ))),
            SizedBox(
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: symptoms.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F6FA),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        symptoms[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Popular Doctors",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppointmentPage(),
                            ));
                      },
                      child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage("images/${img[index]}"),
                                ),
                                Text(
                                  "Dr.Doctor Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  "Skin Specialist",
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      "4.9",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    )
                                  ],
                                )
                              ])));
                })
          ],
        ));
  }
}
