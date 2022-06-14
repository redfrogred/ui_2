import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {

    var controller = context.read<Controller>();
    
    return Scaffold(

      body: Column(
        children: [
         Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
                      child: Text('UI EXAMPLES'),
                    ),
          ),  
          Flexible(
            flex: 5,
            child: Column(
              children: [




          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
                      child: Text('TABS'),
                    ),
          ),               
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center( child: Padding( padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                            onPressed: () { controller.setCurrentPage( context, 2 ); }, 
                            child: const Text('Page1')),),
                      ),
                      Center( child: Padding( padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                            onPressed: () { controller.setCurrentPage( context, 3 ); }, 
                            child: const Text('Page2')),),
                      ),
                      Center( child: Padding( padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                            onPressed: () { controller.setCurrentPage( context, 4 ); }, 
                            child: const Text('Page3')),),
                      ),                

                    ],
                  ),
                ),




          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
                      child: Text('DATEPICKER'),
                    ),
          ),               
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center( child: Padding( padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                            onPressed: () { controller.setCurrentPage( context, 5 ); }, 
                            child: const Text('Page5')),),
                      ),
                      Center( child: Padding( padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                            onPressed: () { controller.setCurrentPage( context, 5 ); }, 
                            child: const Text('Page5')),),
                      ),
                      Center( child: Padding( padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                            onPressed: () { controller.setCurrentPage( context, 5 ); }, 
                            child: const Text('Page5')),),
                      ),                
                    ],
                  ),
                ),






          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
                      child: Text('OTHER'),
                    ),
          ),                
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Padding( padding: const EdgeInsets.all(15.0),
                          child: ElevatedButton(
                              onPressed: () { controller.setCurrentPage( context, 1 ); }, 
                              child: const Text('EndPage')),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),          
        ],
      ),
    );
  }
}