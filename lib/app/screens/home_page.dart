import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_nubank/app/controllers/text_controller.dart';
import 'package:task_nubank/app/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  final textController = Provider.of<TextController>(context).textController;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamentos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Insira o código do boleto que quer pagar',
                style: TextStyle(fontSize: 25, color: Colors.deepPurple),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Insira os números",
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Avançar"),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.BILL);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
