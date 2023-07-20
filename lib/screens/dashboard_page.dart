import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(120)),
                color: Color(0xff5E6CBA),
                image: DecorationImage(
                  image: AssetImage('assets/images/dashboardimg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: MediaQuery.of(context).size.height * 0.05,
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.height * 0.05,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: MediaQuery.of(context).size.height * 0.04,
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.height * 0.04,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff0499fc),
                        Color(0xc33e91dd),
                        Color(0xa45c8dcd),
                        Color(0x8b758ac0),
                        Color(0x778988b6),
                        Color(0x679986ae),
                        Color(0x57a884a6),
                        Color(0x3dc28198),
                        Color(0x22dd7d8b),
                        Color(0x00ff7979)
                      ],
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              // height: MediaQuery.of(context).size.height * 0.07,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
             //   color: Color(0xffd9d9d9),
              ),
              child: TextField(
                style: TextStyle(

                    fontSize: 20, fontWeight: FontWeight.w100),
                decoration: InputDecoration(
                  fillColor: Color(0xffd9d9d9),
                    filled: true,
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search,color: Color(0xff979191),),
                    border: InputBorder.none
                    ),
              ),
              ),

          ],
        ),
      ),
    );
  }
}
