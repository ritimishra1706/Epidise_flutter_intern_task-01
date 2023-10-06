import 'package:digicare/widgets/navbar_code.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavBarCode()));
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        color: Color.fromARGB(255, 228, 16, 125),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/doc1.png"),
                ),
                SizedBox(height: 20),
                Text(
                  "DigiCare",
                  style: TextStyle(
                    color: Color.fromARGB(255, 225, 32, 93),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Be the part of this healthy journey,",
                  style: TextStyle(
                    color: Color.fromARGB(237, 240, 97, 154),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "book your appointment",
                  style: TextStyle(
                    color: Color.fromARGB(237, 240, 97, 154),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        color: Color.fromARGB(255, 238, 51, 51),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Color.fromARGB(255, 238, 51, 51),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ])
              ],
            )));
  }
}
