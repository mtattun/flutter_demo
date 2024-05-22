import 'package:flutter_demo/importer.dart';

class SampleFormScreen extends HookConsumerWidget {
  SampleFormScreen({super.key});
  // build内で宣言すると再描画が走ってしまう
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 検証結果のフラグ
    final validState = useState(true);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadlineTemplate(text: "Title"),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => required(value, label: "Title"),
                    onChanged: (value) {
                      // 値が入力されるたびに検証結果を格納
                      validState.value = _formKey.currentState!.validate();
                    },
                  ),
                ),
                const HeadlineTemplate(text: "Body"),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => required(value, label: "Body"),
                    onChanged: (value) {
                      // 値が入力されるたびに検証結果を格納
                      validState.value = _formKey.currentState!.validate();
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: validState.value
                    ? () {
                        if (_formKey.currentState!.validate()) {
                          debugPrint('success submit!');
                        } else {
                          // 初期値がtrueで初回はボタンが押せるため、検証失敗したらfalseを格納する
                          validState.value = false;
                          showSnackBar(context, "has error!");
                        }
                      }
                    : null,
                    child: const Text("submit"),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

String? required(String? value, {required String label}) {
  return value == null || value.isEmpty
    ? "$label is required"
    : null;
}