import 'package:flutter/material.dart';
import 'package:loan_assistant/screens/home.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.beach_access,
                      color: Colors.green,
                      size: 40,
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Personal",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Loan Assistant",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Get complet loan assistance with \$D Bank loan Assist App",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 25),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home())),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Transform(
                    transform: Matrix4.skewY(3),
                    child: Column(
                      children: [
                        Container(
                          // width: double.infinity,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          // width: double.infinity,
                          height: 60,
                          color: Colors.amberAccent,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    alignment: Alignment.topRight,
                    height: 350,
                    child: Image.network(
                      'https://pngimg.com/uploads/man/man_PNG6531.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
