import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class Page5 extends StatelessWidget {
  const Page5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold (
      body: Center(
        child: Text('datepicker'),)
    ),
  );
}
