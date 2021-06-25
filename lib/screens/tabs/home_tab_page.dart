import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:ux1/const.dart';
import 'package:ux1/model/destination.dart';
import 'package:ux1/screens/dest_screen.dart';
import 'package:ux1/widgets/title_widget.dart';

Widget buildHomePageTabWidget(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            _buildWelcomeWidget(),
            _buildSearchWidget(),
            buildTitleWidget('Recommended', 23),
            _buildRecommendedWidget(context),
            buildTitleWidget('Top Destination', 20),
            _buildTopWidget(context),
          ],
        ),
      ),
    ),
  );
}

Widget _buildTopWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (Destination dest in destinationsList)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestScreen(dest),
                    ),
                  );
                },
                child: Container(
                  height: 80,
                  width: 180,
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(dest.destImg),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dest.destAddress,
                              style: TextStyle(
                                color: colorNavy,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              dest.destCountry,
                              style: TextStyle(
                                color: colorGrey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    ),
  );
}

Widget _buildRecommendedWidget(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Row(
        children: [
          for (Destination dest in destinationsList)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DestScreen(dest),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        dest.destImg,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 70,
                        height: 30,
                        child: Center(
                          child: Text(
                            '\$' + dest.destPrice.toStringAsFixed(0),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: Text(
                                dest.destName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              dest.destAddress + ', ' + dest.destCountry,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    ),
  );
}

Widget _buildSearchWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Search Destination',
              prefixIcon: Icon(Icons.search),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              color: Colors.blue,
            ),
            width: 45,
            height: 45,
            child: Icon(
              Boxicons.bx_slider,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildWelcomeWidget() {
  return Row(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue[200],
        backgroundImage:
            NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: colorGrey,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  'Adam Kowalski',
                  style: TextStyle(
                    color: colorNavy,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Stack(
        children: [
          Icon(
            Icons.notifications,
            size: 30,
            color: colorGrey,
          ),
          Positioned(
            top: 1,
            right: 3,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    ],
  );
}
