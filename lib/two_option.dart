import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin_signup.dart';
import 'package:flutter_application_1/ngos_signup.dart';

class two extends StatelessWidget {
  const two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue[50],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.2,
                right: 35,
                left: 35,
              ),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup1()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(4.0),
                      elevation: 15,
                      shadowColor: Colors.black,
                      side: BorderSide(color: Colors.white),
                      primary: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                    child: Container(
                      width: 300,
                      height: 280,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://img.freepik.com/premium-vector/ngo-nongovernmental-organization-serve-specific-social-template-hand-drawn-illustration_2175-7882.jpg',
                          ),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey,
                            offset: Offset(9, 9),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(3.0),
                      elevation: 15,
                      shadowColor: Colors.black,
                      side: BorderSide(color: Colors.white),
                      primary: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                    child: Container(
                      width: 300,
                      height: 280,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://www.lifewire.com/thmb/l0ydIful6O03ixDE221VLQN_drk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-do-i-find-the-windows-administrator-password-2626064-50a9e096a5d642018d44cfd0c424b643.png',
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey,
                            offset: Offset(9, 9),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
