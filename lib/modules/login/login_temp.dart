import 'package:flutter/material.dart';
import 'package:servicos/modules/login/components_temp/curved-left-shadow.dart';
import 'package:servicos/modules/login/components_temp/curved-left.dart';
import 'package:servicos/modules/login/components_temp/curved-right-shadow.dart';
import 'package:servicos/modules/login/components_temp/curved-right.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(top: 0, left: 0, child: CurvedLeftShadow()),
          Positioned(top: 0, left: 0, child: CurvedLeft()),
          Positioned(bottom: 0, left: 0, child: CurvedRightShadow()),
          Positioned(bottom: 0, left: 0, child: CurvedRight()),
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 37.0, fontWeight: FontWeight.w700),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150.0,
                      padding: const EdgeInsets.only(left: 10.0),
                      margin: const EdgeInsets.only(right: 40.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 20.0,
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(90.0),
                          bottomRight: Radius.circular(90.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            style: TextStyle(fontSize: 22.0),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              icon: Icon(
                                Icons.person_outline,
                                size: 26.0,
                              ),
                              hintText: "Username",
                              border: InputBorder.none,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          TextFormField(
                            style: const TextStyle(fontSize: 22.0),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              icon: Icon(
                                Icons.lock_outline,
                                size: 26.0,
                              ),
                              hintText: "Password",
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(94, 201, 202, 1.0),
                              Color.fromRGBO(119, 235, 159, 1.0),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
