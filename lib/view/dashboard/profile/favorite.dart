
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishListCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String page;
  // final String availableStock;

  const WishListCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.page,
    // required this.availableStock,
    // required this.discountPrice,
  });

  @override
  State<WishListCard> createState() => _WishListCardState();
}

class _WishListCardState extends State<WishListCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.page),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 88,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                        child: Image.asset(
                          widget.imageUrl,
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 70,
                      width: 270,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                "time",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black12),
                              )
                            ]),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
