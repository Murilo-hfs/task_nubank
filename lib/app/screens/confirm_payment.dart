import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_nubank/app/controllers/date_controller.dart';
import 'package:task_nubank/app/controllers/text_controller.dart';
import 'package:task_nubank/app/utils/app_routes.dart';
import 'package:task_nubank/app/widgets/comprove_widget.dart';

class ConfirmPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dateController = Provider.of<DateController>(context).dateController;
    final textController = Provider.of<TextController>(context).textController;
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmar Pagamento'),
        actions: [
          ElevatedButton.icon(
            label: Text('Home'),
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ComproveWidget(
              msg1: "Valor",
              msg2: 'R\$ 49,52',
            ),
            ComproveWidget(
              msg1: "Agendado para",
              msg2: '${dateController.text}',
            ),
            ComproveWidget(
              msg1: "Pagador",
              msg2: 'Tadeu',
            ),
            ComproveWidget(
              msg1: "Agência",
              msg2: '001',
            ),
            ComproveWidget(
              msg1: "Conta",
              msg2: '573912i3902-3',
            ),
            TextButton.icon(
              icon: Icon(Icons.backup_table_rounded),
              label: Text('Documento'),
              onPressed: () {},
            ),
            ComproveWidget(
              msg1: "Favorecido",
              msg2: 'ALGAR TELECOM',
            ),
            ComproveWidget(
              msg1: "Linha Digitavel",
              msg2: '${textController.text}',
            ),
          ],
        ),
      ),
    );
  }
}
