import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold (
      //var controller = context.read<Controller>();
      appBar: AppBar(
        title: Text('Page2'),
        centerTitle: true,
        backgroundColor: Colors.black,
        bottom: TabBar( 
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.yellow,
          tabs: [
            Tab(text: 'Tab1b'),
            Tab(text: 'Tab2'),
            Tab(text: 'Tab3'),                        
          ]
        )
      ),
      body: TabBarView ( 
        children: [
          Center(child: Text('Tab 1 Content')),
          Center(child: Text('Tab 2 Content')),
          Center(child: Text('Tab 3 Content')),
        ]
      )
    ),
  );
}
