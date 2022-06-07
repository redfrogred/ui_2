import 'package:provider/provider.dart';
import 'package:ui_2/pages/_all.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class Page3 extends StatelessWidget {
  const Page3({ Key? key }) : super(key: key);

  TabBar get _tabBar => TabBar(
    tabs: [
      Tab(text: 'Timed'),
      Tab(text: 'Permanent'),
      Tab(text: 'One-time'),
      Tab(text: 'Recurring'),
    ],
  );

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: Scaffold (
      //var controller = context.read<Controller>();
      appBar: AppBar(
        title: Text('Send eKey'),
        centerTitle: true,
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: ColoredBox(
            color: Colors.white,
            child: _tabBar,
          ),
        ),
      ),
      
      body: TabBarView ( 
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('This is extra special because "Tab 3" is a separate page completely (PageLatin)...'),
          )),
          Center(child: Text('Tab 2 Content')),
          PageLatin(),
          Center(child: Text('Tab 4 Content')),
        ]
      )
    ),
  );
}
