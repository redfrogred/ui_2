import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class Page1 extends StatelessWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold (
      //var controller = context.read<Controller>();
      appBar: AppBar(
        title: Text('Page1'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        bottom: TabBar( 
          indicatorColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'Tab1b'),
            Tab(text: 'Tab2'),
            Tab(text: 'Tab3'),                        
          ]
        )
      ),
      body: TabBarView ( 
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('This is how to make colorize and style tabs...'),
          )),
          Center(child: Text('Tab 2 Content')),
          Center(child: Text('Tab 3 Content')),
        ]
      )
    ),
  );
}
