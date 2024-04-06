// Project imports:
import 'package:flutter_demo/importer.dart';

class HomeScreenWidget extends ConsumerWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter demo application'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('hello world.'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to application')
            ),
          ],
        ),
      ),
    );
  }
}
