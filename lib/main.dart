import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Header(),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Greeting(), WeeklyStats(), CelebrityTraining()],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.grid_view, size: 24, color: Colors.black45),
          Text(
            'Go Workout',
            style: TextStyle(
                color: Colors.black45,
                fontFamily: 'Gilroy',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                'https://pbs.twimg.com/profile_images/1378605228136665088/IMXG5kz4_400x400.jpg'),
          )
        ],
      ),
    );
  }
}

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello,',
          style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Gilroy',
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        Text(
          'Murwanto',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Gilroy',
              fontSize: 28,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class WeeklyStats extends StatelessWidget {
  const WeeklyStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text(
                'Weekly Stats',
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Gilroy',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius:
                              BorderRadius.all(Radius.circular(36.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              child: Text("🔥", style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(4, 8, 4, 4),
                            child: Text(
                              '2,154',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Gilroy',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            'kcal burnt',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: IntrinsicWidth(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 95,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen[100],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(36.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0))),
                                        child: Text(
                                          "⌛",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            '16h',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Gilroy',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Text(
                                          'total time',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black45),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Container(
                                height: 95,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(36.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0))),
                                        child: Text("💪🏻",
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            '107',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Gilroy',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Text(
                                          'exercises',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black45),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: 110,
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(36.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Most active',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.grey),
                      ),
                      Text(
                        'Thursday',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontSize: 18),
                      )
                    ],
                  ),
                  WeeklyGraphic(),
                ],
              ),
            ),
          ],
        ));
  }
}

class WeeklyGraphic extends StatelessWidget {
  const WeeklyGraphic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: 30,
                margin: EdgeInsets.only(bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(36.0))),
              ),
              Text(
                'mo',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: 24,
                margin: EdgeInsets.only(left: 15, bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(36.0))),
              ),
              Text(
                'tu',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: 36,
                margin: EdgeInsets.only(left: 15, bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(36.0))),
              ),
              Text(
                'we',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: 56,
                margin: EdgeInsets.only(left: 15, bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(Radius.circular(36.0))),
              ),
              Text(
                'th',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: 44,
                margin: EdgeInsets.only(left: 15, bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(36.0))),
              ),
              Text(
                'fr',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CelebrityTraining extends StatelessWidget {
  const CelebrityTraining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.only(left: 24, right: 24, top: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(36.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Try celebrity \n training programs!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    margin: EdgeInsets.only(right: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text(
                      'Let\'s Try',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
