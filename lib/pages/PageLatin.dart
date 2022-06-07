import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';

class PageLatin extends StatelessWidget {
  const PageLatin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold (
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('This Latin is pulled from a stand alone page, Son!  Ipsum Lorem, beeatch!\n\nVestibulum eleifend mauris sit amet porta malesuada. Sed molestie at leo elementum ultricies. Fusce malesuada pharetra sem, sed posuere dui ornare eget. Ut aliquam maximus justo, in maximus dui volutpat vel. Vestibulum non tellus sit amet urna ultrices tincidunt. Curabitur hendrerit nec ipsum at ultricies. In ullamcorper nec ex ut tincidunt. Donec posuere metus ut urna sagittis, vel sollicitudin neque dapibus. Aliquam cursus leo arcu, id cursus dolor malesuada iaculis.\n\nPraesent facilisis purus nec arcu hendrerit sollicitudin. Sed hendrerit nisi vel facilisis dignissim. Integer finibus malesuada mauris quis sodales. Ut elementum diam sapien, et vehicula erat volutpat ut. Donec interdum tincidunt purus non commodo. Integer semper neque ut feugiat venenatis.'),
        ),
      )
    ),
  );
}
