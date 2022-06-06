import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class EndPage extends StatelessWidget {
  const EndPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold (
      //var controller = context.read<Controller>();
      appBar: AppBar(
        title: Text('Ekey'),
        centerTitle: true,
        bottom: TabBar( 
          tabs: [
            Tab(text: 'Tab1'),
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
