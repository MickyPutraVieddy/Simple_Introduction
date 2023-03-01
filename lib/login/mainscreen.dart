import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("lib/image/gambar2.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 400, right: 200),
                    child: Text(
                      "Brand New",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 190),
                    child: Text(
                      "Perspective",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18, right: 130),
                    child: Text(
                      "Let's start with our collections",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    height: 150,
                    child: Padding(
                        padding: EdgeInsets.only(
                          top: 100,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Text(
                            "Get Start",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('startedscreen');
                          },
                        )),
                  ),
                  // SizedBox(
                  //   width: 250,
                  //   height: 70,
                  //   child: Padding(
                  //       padding: EdgeInsets.only(
                  //         top: 10,
                  //       ),
                  //       child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //             backgroundColor: Colors.indigo,
                  //             shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(15))),
                  //         child: Text("Create Account"),
                  //         onPressed: () {
                  //           Navigator.of(context).pushNamed('daftarscreen');
                  //         },
                  //       )),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
