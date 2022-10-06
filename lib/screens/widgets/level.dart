import 'package:flutter/material.dart';

class Level extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.grey,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 84,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(16))
            ),
            child: Center(child: Text("Lessons", style: TextStyle(color: Colors.yellow, fontSize: 20),)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 84,
            height: 35,
                color: Colors.pink,

            child: Center(child: Text("Tests", style: TextStyle(color: Colors.yellow, fontSize: 20),)),
          ),
          Container(
            width: 84,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(16))
            ),
            child: Center(child: Text("Discuss", style: TextStyle(color: Colors.yellow, fontSize: 20),)),
          ),
        ],
      ),
    );
  }

  @override

  double get maxExtent => 50;

  @override

  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;


}