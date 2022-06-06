// See:
// https://stackoverflow.com/questions/50566868/how-to-change-background-color-of-tabbar-without-changing-the-appbar-in-flutter/65779947#65779947

import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  TabBar get _tabBar => TabBar(
    tabs: [
      Tab(text: 'Tab1'),
      Tab(text: 'Tab2'),
      Tab(text: 'Tab3'),
    ],
  );

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold (
      //var controller = context.read<Controller>();
      appBar: AppBar(
        title: Text('Page2'),
        centerTitle: true,
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: ColoredBox(
            color: Colors.yellow,
            child: _tabBar,
          ),
        ),
      ),
      
      body: TabBarView ( 
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('This is how to make tabs where the tab color is different from the APpBar color...'),
          )),
          Center(child: Text('Tab 2 Content')),
          Center(child: Text('Tab 3 Content')),
        ]
      )
    ),
  );
}
