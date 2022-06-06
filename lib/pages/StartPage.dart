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
          const Flexible(
            child: Center(
                      child: Text('StartPage'),
                    ),
          ),
          Flexible(
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
                      onPressed: () { controller.setCurrentPage( context, 1 ); }, 
                      child: const Text('EndPage')),),
                ),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}