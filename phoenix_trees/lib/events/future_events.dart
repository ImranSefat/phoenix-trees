import 'package:flutter/material.dart';
import 'package:practice_folder/constants/event_data.dart';
import 'package:practice_folder/events/event_details.dart';

class FutureEvents extends StatefulWidget {
  const FutureEvents({Key? key}) : super(key: key);

  @override
  _FutureEventsState createState() => _FutureEventsState();
}

class _FutureEventsState extends State<FutureEvents> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final EventDetails details;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            height: size.height * 0.4,
            decoration: BoxDecoration(
                //color: Colors.green[400],
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF22577A),
                    Color(0xFF38A3A5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Stack(children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios, size: 30, color: Colors.black54),
                  SizedBox(
                    width: 290,
                  ),
                  Icon(Icons.notifications, size: 30, color: Colors.black54)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Text(
                  'Start your First \nContribution',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
              )
            ]),
          ),
          SingleChildScrollView(
            //physics: BouncingScrollPhysics(),
            //physics: const AlwaysScrollableScrollPhysics(),
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            // shrinkWrap: true,

            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => EventDetails()));
                  },
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(20),
                      elevation: 6.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF38A3A5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: 220,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('images/p.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFF38A3A5),
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "\$18",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'sans-serif',
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Dhanmondi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'sans-serif',
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                                child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(16.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Planting Biodiverse plants in Bangladesh",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontFamily: 'sans-serif',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ])),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
