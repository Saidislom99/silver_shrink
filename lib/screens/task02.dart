import 'package:flutter/material.dart';
import 'package:silver_shrink/screens/widgets/level.dart';

class Scroller extends StatefulWidget {
  const Scroller({Key? key}) : super(key: key);

  @override
  State<Scroller> createState() => _ScrollerState();
}

class _ScrollerState extends State<Scroller> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: false,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("HTML"),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search_rounded, size: 30,),
                )
              ],
              leading:Icon(Icons.arrow_back_ios)
              ,
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                child: Center(child: Text("Tags for headers", style: TextStyle(color: Colors.blue, fontSize: 24),)),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                child: Center(child: Text("3 of lessons 11", style: TextStyle(color: Colors.green, fontSize: 16),)),
              ),
            ),
            SliverPadding(
              padding:const EdgeInsets.symmetric(vertical: 5, horizontal: 17),
              sliver: SliverPersistentHeader(
                  pinned: true,
                  delegate: Level()),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 10,
                (BuildContext context, int index){
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius:  BorderRadius.circular(16),
                        child: Image.network("https://png.pngtree.com/thumb_back/fh260/back_pic/04/01/15/08580066565256e.jpg"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Text("Help your kids develop strong math, reading and writing skills and boost their confidence. Help Your Kids Develop Strong Math, Reading And Writing Skills. Browse Resources. Find A Center. Read Newsroom. Highlights: Center Finder Available, Study Tips & Resources Available, Free Orientation Available.",
                        textAlign: TextAlign.justify,),
                      )
                    ],
                  );
                }
            ))
          ],
        ),
      ),
    );
  }
}
