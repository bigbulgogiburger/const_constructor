import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TestWidget(label: 'test1'),
            const TestWidget(label: 'test2'),
            // elevatedButton 여기서는 const를 할 수 없다. on pressed에서 무슨 일이 일어날 지 확신할 수 없기 때문에
            ElevatedButton(
                onPressed: (){
                  setState(() {

                  });
                },
                child: const Text('빌드!'))
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  final String label;

  const TestWidget({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$label 빌드 실행!');
    return Container(
      child: Text(label),
    );
  }
}
