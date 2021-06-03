import 'package:flutter/material.dart';
import 'package:task_nubank/app/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamentos'),
      ),
      body: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Insira o código do boleto que quer pagar',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: textController ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Insira os números",
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
                        child: ElevatedButton(
                child: Text("Avançar"),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.BILL);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
