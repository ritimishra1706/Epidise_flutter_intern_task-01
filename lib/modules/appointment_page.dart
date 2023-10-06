import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppointmentPage extends StatelessWidget {
  final List imgs = [
    "p_d2.jpg",
    "p_d3.jpg",
    "p_d2.jpg",
    "p_d3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 248, 146, 187),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 25,
                            )),
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 25,
                            ))
                      ]),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage("images/profile_doc.jpg"),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Mr. Avinash Singh",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Hair Specialist",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 59, 74),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 25,
                                    )),
                                SizedBox(width: 20),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 244, 59, 74),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    CupertinoIcons.chat_bubble_text_fill,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ],
                            )
                          ])),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "About Doctor",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Mr. Avinash is reputed doctor at New City Hospital at Gandhinagar, He did MBBS from some famous hospital",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 5),
                    InkWell(
                      onTap: () => launchUrl(Uri.parse('bit.ly/3F7xxSW')),
                      child: Text(
                        'Click here to know more',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Reviews",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.amber),
                        Text("4.7",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                        SizedBox(width: 5),
                        Text(
                          "(124)",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black26),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromARGB(255, 244, 59, 74),
                              )),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA), shape: BoxShape.circle),
                        child: Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 244, 59, 74),
                          size: 30,
                        ),
                      ),
                      title: Text(
                        "India, New City Hospital",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("address line of hospital,"),
                    ),

                    //),
                    // SizedBox(
                    //     height: 60,
                    //     child: ListView.builder(
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: 4,
                    //       itemBuilder: (context, index) {
                    //         return Container(
                    //             margin: EdgeInsets.all(10),
                    //             padding: EdgeInsets.symmetric(vertical: 5),
                    //             decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.black12,
                    //                     blurRadius: 4,
                    //                     spreadRadius: 2,
                    //                   ),
                    //                 ]),
                    //             child: SizedBox(
                    //                 width:
                    //                     MediaQuery.of(context).size.width / 1.5,
                    //                 child: Column(
                    //                   children: [
                    //                     ListTile(
                    //                       leading: CircleAvatar(
                    //                         radius: 25,
                    //                         backgroundImage: AssetImage(
                    //                             "images/${imgs[index]}"),
                    //                       ),
                    //                       title: Text("Dr.Doctor",
                    //                           style: TextStyle(
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                       subtitle: Text("1 day ago"),
                    //                       trailing: Row(children: [
                    //                         Icon(
                    //                           Icons.star,
                    //                           color: Colors.amber,
                    //                         ),
                    //                         Text("4.8",
                    //                             style: TextStyle(
                    //                               color: Colors.black54,
                    //                             ))
                    //                       ]),
                    //                     )
                    //                   ],
                    //                 )));
                    //       },
                    //     ))
                    // ],
                  ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          )
        ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation price",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "\$600",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            InkWell(
                onTap: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 59, 74),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text("Book Appointment",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ))))),
          ],
        ),
      ),
    );
  }
}
