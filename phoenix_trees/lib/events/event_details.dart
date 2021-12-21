import 'package:flutter/material.dart';
import 'package:practice_folder/events/future_events.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            height: size.height * 0.35,
            decoration: BoxDecoration(
                color: Color(0xFF38A3A5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Stack(children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => FutureEvents()));
                    },
                    child: Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  Icon(Icons.favorite, size: 20, color: Colors.white)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Container(
                  height: 200,
                  width: 300,
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
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Planting \nBiodiverse plants \nin Bangladesh",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
            child: Flexible(
              child: Text(
                "You can reuce the carbon produced or you can remove it. Join our project to make difference",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 80),
                  child: Flexible(
                    child: Text(
                      "800 sq m ",
                      style: TextStyle(
                        color: Color(0xFF22577A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 30),
                  child: Flexible(
                    child: Text(
                      "Area",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                width: 20,
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 30),
                  child: Flexible(
                    child: Text(
                      "120",
                      style: TextStyle(
                        color: Color(0xFF22577A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  child: Flexible(
                    child: Text(
                      "Total Trees",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 80),
                  child: Flexible(
                    child: Text(
                      "5h 40m",
                      style: TextStyle(
                        color: Color(0xFF22577A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 30),
                  child: Flexible(
                    child: Text(
                      "Duration",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                width: 20,
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
                  child: Flexible(
                    child: Text(
                      "20",
                      style: TextStyle(
                        color: Color(0xFF22577A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  child: Flexible(
                    child: Text(
                      "Points",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF38A3A5),
              ),
              child: Center(
                child: Text(
                  "Donate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
