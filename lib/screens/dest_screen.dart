import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ux1/const.dart';
import 'package:ux1/model/destination.dart';
import 'package:ux1/widgets/title_widget.dart';

class DestScreen extends StatelessWidget {
  final Destination dest;
  DestScreen(this.dest);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDestPhotoWidget(context),
                  buildTitleWidget('About', 20),
                  buildDescWidget(),
                  buildTitleWidget('Gallery', 20),
                  buildGalleryWidget(),
                  buildBigButtonWidget(context, 'Book now'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBigButtonWidget(BuildContext context, String buttonText) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width,
          height: 80,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGalleryWidget() {
    Widget _buildGalleryPhoto(bool extraPhotos) {
      return Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      dest.destImg,
                    ),
                  ),
                ),
              ),
              extraPhotos
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  : Container(),
              extraPhotos
                  ? Positioned(
                      child: Center(
                        child: Text(
                          '+6',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildGalleryPhoto(false),
        _buildGalleryPhoto(false),
        _buildGalleryPhoto(false),
        _buildGalleryPhoto(true),
      ],
    );
  }

  Widget buildDescWidget() {
    return Text(
      dest.destDescription,
      style: TextStyle(
        color: colorGrey,
        fontSize: 16,
        height: 1.5,
      ),
    );
  }

  Widget buildDestPhotoWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  dest.destImg,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Positioned(
            top: 15,
            left: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[200],
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[200],
              ),
              child: Center(
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 15,
            child: Container(
              width: 200,
              child: Text(
                dest.destName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '\$' + dest.destPrice.toStringAsFixed(0),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '/person',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: colorGrey.withOpacity(0.7),
              ),
              width: 85,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '4.9',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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
