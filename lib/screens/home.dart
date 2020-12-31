import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.notifications_outlined),
              Positioned(
                right: 2,
                top: 20,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1535713875002-"
              "d1d0cf377fde?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx"
              "8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  "Get Free",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Consultation Now !",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          ListView(
            shrinkWrap: true,
            children: [
              itemCard(
                title: "Personal Loan",
                subtitle: "2.8k Answers",
              ),
              itemCard(
                title: "Personal Loan",
                subtitle: "2.8k Answers",
              ),
              itemCard(
                title: "Personal Loan",
                subtitle: "2.8k Answers",
              ),
            ],
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Loan Calculator",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Now Calculate Your Loan EMI with ease"),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    child: FlatButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text("Check Now"),
                      textColor: Colors.white,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container itemCard({String icon, String title, String subtitle}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: Container(
          height: 55,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        subtitle: Text(
          subtitle,
          style: TextStyle(decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
