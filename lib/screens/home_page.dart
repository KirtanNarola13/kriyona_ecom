import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kriyona/utils/globle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amberAccent,
        title: Text(
          "KRIYONA",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 13,
            letterSpacing: 3,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.grey.shade700,
            ),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.center,
                  height: height / 5,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(60),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7,
                    ),
                    height: height / 16,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      border: Border.all(
                        color: Colors.grey.shade700,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search_outlined,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(
                              width: width / 35,
                            ),
                            Text(
                              "search product",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                letterSpacing: 2,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.grey.shade700,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: allProduct.map((e) {
                    List<Map<String, dynamic>> data = e['categoryProduct'];
                    return Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${e['category']}",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(
                            height: height / 50,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ...data.map((e) {
                                  return Container(
                                    margin: const EdgeInsets.only(
                                      right: 17,
                                      left: 5,
                                    ),
                                    height: height / 2.5,
                                    width: width / 1.8,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.grey.shade700,
                                              width: 1,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                    ),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                        "${e['thumbnail']}",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  alignment: Alignment.topLeft,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                    color: Colors.grey.shade100,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "${e['name']}",
                                                        style: TextStyle(
                                                          color: Colors
                                                              .grey.shade700,
                                                        ),
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          RatingBar.builder(
                                                            initialRating:
                                                                double.parse(
                                                                    "${e['rating']}"),
                                                            minRating: 1,
                                                            direction:
                                                                Axis.horizontal,
                                                            allowHalfRating:
                                                                true,
                                                            itemCount: 5,
                                                            itemSize: 18,
                                                            ignoreGestures:
                                                                true,
                                                            itemPadding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        1),
                                                            itemBuilder:
                                                                (context, _) =>
                                                                    Icon(
                                                              Icons.star,
                                                              color: Colors
                                                                  .amberAccent,
                                                            ),
                                                            onRatingUpdate:
                                                                (rating) {},
                                                          ),
                                                          Text(
                                                            "(${e['ratingcount']})",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 9,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Container(
                                                        height: height / 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Colors.grey
                                                                  .shade700,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                    width / 50,
                                                              ),
                                                              Text(
                                                                "₹ ${e['price']}",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width:
                                                                    width / 90,
                                                              ),
                                                              Text(
                                                                // "(${e['discount']}% off)",
                                                                "${e['faceprice']}",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 12,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            "(${e['discount']}% off)",
                                                            style: TextStyle(
                                                              color: Colors.red,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height / 18.5,
                                          width: width / 10,
                                          decoration: BoxDecoration(
                                            color: Colors.amberAccent,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                            border: Border.all(
                                              color: Colors.grey.shade700,
                                              width: 1,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.grey.shade700,
                                            size: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
