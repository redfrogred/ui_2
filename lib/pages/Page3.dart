import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class Page3 extends StatelessWidget {
  const Page3({ Key? key }) : super(key: key);

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
        title: Text('Page3'),
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
            child: Text('Not done yet...'),
          )),
          Center(child: Text('Tab 2 Content')),
          Center(child: Text('Tab 3 Content')),
        ]
      )
    ),
  );
}
