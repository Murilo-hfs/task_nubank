import 'package:flutter/material.dart';
import 'package:task_nubank/app/widgets/comprove_widget.dart';

class ConfirmPayment extends StatefulWidget {
  @override
  _ConfirmPaymentState createState() => _ConfirmPaymentState();
}

class _ConfirmPaymentState extends State<ConfirmPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmar Pagamento'),
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
              msg2: '02 JUN 2021',
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
              onPressed: (){},
            ),
             ComproveWidget(
              msg1: "Favorecido",
              msg2: 'ALGAR TELECOM',
            ),
             ComproveWidget(
              msg1: "Linha Digitavel",
              msg2: '23190-9028490238490321042932-38294-902334238497238 ',
            ),
          ],
        ),
      ),
    );
  }
}
