import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 40, left: 30, right: 50),
                    child: Text(
                        'What would you like to do today?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ActivityButton(name: 'Bike', icon: Icons.directions_bike),
                      ActivityButton(name: 'Walk', icon: Icons.directions_run),
                      ActivityButton(name: 'Hike', icon: Icons.directions_walk),
                    ],
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(70)
              )
            ),
          )
        ],
      ),
    );
  }
}

class ActivityButton extends StatelessWidget {

  final String name;
  final IconData icon;

  const ActivityButton({
    Key? key, required this.name, required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
              child: Icon(
                this.icon,
                size: 30,
              ),
            ),
            Text(
              this.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15)
          )
        ),
      ),
    );
  }
}

