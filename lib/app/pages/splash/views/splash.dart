import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:test_project/app/pages/splash/controller/controller.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Splash_Screen extends GetView {
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        titleSpacing: 0,
        leading: Container(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Center(
              child: Text(
                'USell\nUP',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            width: 220,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "   Search",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Icon(
                      Icons.headset_mic,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Image.asset('assets/images/24_7.png')),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Icon(
                      Icons.qr_code_scanner_sharp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfff3f3f3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xfff4f3f3),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      splashController.headerTitles[0],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      splashController.headerTitles[1],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      splashController.headerTitles[2],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      splashController.headerTitles[3],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Image.asset('assets/images/shopping.jpeg'),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white.withOpacity(0.3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '    AED 300/-',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'AED 600/-',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff8c8c8c),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffff7001),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                height: 30,
                                child: TextButton(
                                  child: Text(
                                    '50% off',
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best practice Definition & Meaning',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1592e5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      height: 50,
                      width: 100,
                      child: TextButton(
                        child: Text(
                          'SHOP',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 170,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 120,
                        height: 500,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.category,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(splashController.categories[index]),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '     #BEST TITLE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   width: 1000,
              //   height: 2000,
              //   child: GridView.count(
              //     primary: false,
              //     padding: const EdgeInsets.all(20),
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10,
              //     crossAxisCount: 3,
              //
              //     children: [
              //
              //
              //     ],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                '     #TOP TITLES',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 120,
                        height: 500,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blueAccent, width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/avatar.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(splashController.users[index]),
                            ],
                          ),
                        ),
                      );
                    }),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text(splashController.bottomWidgets[0].toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                Text(splashController.bottomWidgets[1].toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                Text(splashController.bottomWidgets[2].toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                Text(splashController.bottomWidgets[3].toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
              ]),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '     #SHOP BY CATEGORY',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All   ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.horizontal_split_sharp,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sub Category',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.horizontal_split_sharp,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sub Category',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  'assets/images/clothing.jpeg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 3,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 3,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5c5b50),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(child: Text('3 km')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8c8c8c),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffff7001),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              height: 30,
                              child: Center(
                                child: Text(
                                  '    00%    ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Text(
                            '00.00/-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'Product Service Title Product ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'USell\nUP',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Project By',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Text('   EZENESS TECHNOLOGY',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.horizontal_split_sharp,
                  ),
                  Icon(
                    Icons.shopping_bag,
                  ),
                  Icon(
                    Icons.phone_iphone,
                  ),
                  Icon(
                    Icons.map_outlined,
                  ),
                  Icon(
                    Icons.favorite,
                  ),

                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
