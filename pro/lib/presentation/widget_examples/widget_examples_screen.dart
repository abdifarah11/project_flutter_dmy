import 'package:flutter/material.dart';
import 'package:pro/presentation/components/custom_button.dart';
import 'package:pro/presentation/widget_examples/media_query_example.dart';
import 'package:pro/presentation/widget_examples/widgets/build_idard.dart';
import 'package:pro/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:pro/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:pro/presentation/widget_examples/widgets/person.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Basics')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            buildPixelIdCard(
              const Person(
                name: 'bashir',
                age: '27',
                country: 'Somalia',
                job: 'Call Center',
                pictureUrl:
                    'https://scontent.fmgq2-1.fna.fbcdn.net/v/t39.30808-6/460822665_8263170990437498_2458812363713748834_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vQSUoEAGkUcQ7kNvgEMQP5N&_nc_zt=23&_nc_ht=scontent.fmgq2-1.fna&_nc_gid=Asc0nQ-DLu7og70S5wu5cZB&oh=00_AYCXbb1nmLh7wdrrf9PIahNNYWgPcgSnDXl1RCU2xQgLzQ&oe=676D9232',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            buildPixelIdCard(
              const Person(
                name: 'abdi farah',
                age: '27',
                country: 'Somalia',
                job: 'Call Center',
                pictureUrl:
                    'https://scontent.fmgq2-1.fna.fbcdn.net/v/t39.30808-6/438887561_1433948970820280_1890153897128694255_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=_pJLSbqvMdYQ7kNvgFZyk3Q&_nc_zt=23&_nc_ht=scontent.fmgq2-1.fna&_nc_gid=AZQE4Bdg9_jQGbWThO1M0Gl&oh=00_AYA1BYg0nNLvx24rf0uAqBR8O-dAa4vS5e23Qyt7LaMCrw&oe=676D91A6',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const MediaQueryExample(),
            const SizedBox(
              height: 40,
            ),
            const LayoutBuilderExample(),
            const SizedBox(
              height: 40,
            ),
            const ButtonExamples(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, '/screenOne');
              },
              icon: Icons.home,
              iconColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonGesture(
              onTap: () {
                Navigator.pushNamed(context, '/screenTwo');
              },
              text: 'gesture button',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.ac_unit),
      ),
    );
  }

}