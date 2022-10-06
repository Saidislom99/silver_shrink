import 'package:flutter/material.dart';

class PinnedHeaderView extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 100,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       color: Colors.grey,
     ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.pink, size: 30,),
          Text("Search", style: TextStyle(color: Colors.pink),)
        ],
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
