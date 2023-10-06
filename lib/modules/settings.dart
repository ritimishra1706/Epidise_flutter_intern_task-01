import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Settings",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: 30),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/profile1.jpg"),
              ),
              title: Text(
                "Joe Korle",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              subtitle: Text("Profile"),
            ),
            Divider(height: 50),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 226, 226),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    CupertinoIcons.person,
                    color: Color.fromARGB(255, 244, 59, 74),
                    size: 35,
                  )),
              title: Text("Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 226, 226),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Color.fromARGB(255, 244, 59, 74),
                    size: 35,
                  )),
              title: Text("Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 226, 226),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    color: Color.fromARGB(255, 244, 59, 74),
                    size: 35,
                  )),
              title: Text("Privacy",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 226, 226),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 244, 59, 74),
                    size: 35,
                  )),
              title: Text("Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ));
  }
}
