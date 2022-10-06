import 'package:flutter/material.dart';
import 'package:silver_shrink/screens/widgets/silves_header.dart';
import 'package:silver_shrink/screens/widgets/silves2_hearder.dart';


class SilverApp extends StatefulWidget {
  const SilverApp({Key? key}) : super(key: key);

  @override
  State<SilverApp> createState() => _SilverAppState();
}

class _SilverAppState extends State<SilverApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                     Expanded(child: SizedBox()),
                    Text("Hello", style: TextStyle(fontSize: 12, color: Colors.cyanAccent),),
                     SizedBox(height: 5,),
                    Text("Sarah Conor", style:TextStyle(fontSize: 12, color: Colors.cyanAccent) ,)
                  ],
                ) ,
                titlePadding:const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                background: Image.network(
                  "https://png.pngtree.com/thumb_back/fh260/back_pic/04/01/15/08580066565256e.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.blue,
             // leading: const BackButton(),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: IconButton(
                    icon: const Icon(Icons.notifications_active),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverPersistentHeader(
                  pinned: false,
                  delegate: PinnedHeaderView(
                  ),

              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: ExampleHeaderView(
                ),

              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.network("https://png.pngtree.com/thumb_back/fh260/back_pic/04/01/15/08580066565256e.jpg",
                            fit: BoxFit.cover,
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Icon(Icons.heart_broken, color: Colors.black, size: 30,))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Text("3H 3min "),
                        const SizedBox(height: 2,),
                        Text("UI ", style: TextStyle(color: Colors.blue, fontSize: 18),),
                        const SizedBox(height: 2,),
                        Text("Advanced mobile interface design"),

                      ],
                    )
                  );
                },
                childCount: 10,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
               // mainAxisSpacing: 10.0,
                childAspectRatio: 0.9,
              ),
            )
          ],
        ),
      ),
    );
  }
}
