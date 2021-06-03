import 'package:flutter/material.dart';
import 'package:task_nubank/app/utils/app_routes.dart';
import 'package:task_nubank/app/widgets/card_widget.dart';

class BillScreen extends StatefulWidget {
  @override
  _BillScreenState createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seu boleto é...'),
      ),
      body: SingleChildScrollView(
              child: Container(
          child: Column(
            children: [
              ColumnWidget(),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width:MediaQuery.of(context).size.width,
        child: TextButton(
          child: Text('CONFIRMAR AGENDAMENTO'),
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.CONFIRM_PAYMENT);
          },
        ),
      ),
    );
  }
}
