import 'package:fastivapi/utilities/artist_model.dart';
import 'package:fastivapi/utilities/data_brut.dart';
import 'package:fastivapi/utilities/evenement_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fastivapi/utilities/constants.dart';

import 'log_in.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("assets/me.jpg"),
                      ),
                    ),
                  ],
                ),
                CustomTitle("Upcoming"),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: upcomingEvents.length,
                    itemBuilder: (context, index) {
                      EventModel event = upcomingEvents[index];
                      return Container(
                        width: 300,
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(event.image),
                            ),
                            Text(event.location,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                )),
                            Text(event.name,
                              style: TextStyle(
                                  fontSize: 25,
                                  color:Color(0xFFffe140)
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                CustomTitle("Special for you"),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: specialEvents.length,
                    itemBuilder: (context, index) {
                      EventModel event = specialEvents[index];
                      return Container(
                        width: 240,
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(event.image),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(event.price),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(event.location,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                )),
                            Text(event.name, style: TextStyle(fontSize: 25, color:Color(0xFFffe140))),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                CustomTitle("Artists on tour"),
                Container(
                  height: 240,
                  child: ListView.builder(
                    itemCount: artistsOnTour.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      ArtistModel artist = artistsOnTour[index];

                      return Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    artist.image,
                                    width: 280,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    width: 280,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.pink.withAlpha(110),
                                            Colors.deepPurple.withAlpha(190),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              artist.name,
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }//

  Widget _buildBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));},
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFFffe140),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
