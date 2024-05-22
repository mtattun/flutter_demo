import 'package:flutter_demo/importer.dart';

class HeadlineTemplate extends ConsumerWidget {
  const HeadlineTemplate({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}