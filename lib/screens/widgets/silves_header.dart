import 'package:flutter/material.dart';

class ExampleHeaderView extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16)
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) =>
            Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 1,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("Car", style: TextStyle(color: Colors.white),)),
            )
        ),
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}