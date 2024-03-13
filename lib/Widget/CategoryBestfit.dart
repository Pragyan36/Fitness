import 'package:flutter/material.dart';

class CategoryBest extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String time;
  final void Function() ontap;
  const CategoryBest(
      {super.key,
      required this.imageUrl,
      required this.time,
      required this.title, required this. ontap});

  @override
  State<CategoryBest> createState() => _CategoryBestState();
}

class _CategoryBestState extends State<CategoryBest> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: 87,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, right: 8, left: 12, bottom: 0),
                          child: Container(
                            height: 55,
                            width: 50,
                            decoration: BoxDecoration(
                                // color: Colors.black38,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.imageUrl,
                                // Assets.bestFit,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 8, left: 8, right: 8),
                          child: Container(
                            // color: Colors.black26,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.title,
                                    // "Abs . Intermidate",
                                    style: TextStyle(
                                        // color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    widget.time,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.arrow_right,
                    size: 37,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
