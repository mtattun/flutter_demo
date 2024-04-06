import 'package:flutter_demo/importer.dart';

class ArticleScreenWidget extends ConsumerWidget {
  const ArticleScreenWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter demo application'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome article page.'),
          ],
        ),
      ),
    );
  }
}