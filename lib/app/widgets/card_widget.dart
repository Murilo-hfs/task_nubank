import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class CardWidget extends StatelessWidget {
  final String msg1;
  final String msg2;
  final Icon icon;
  const CardWidget({
    this.msg1,
    this.msg2,
    this.icon,
  });

  @override
  Widget build(context) {
    return Card(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(msg1),
            Container(
              child: Text(msg2),
            ),
          ],
        ),
      ]),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  final date = DateTime.now();
  @override
  Widget build(context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text('Você está pagando'),
                Center(
                  child: Text('R\$74.55'),
                ),
                Container(
                  child: Text('Saldo disponivel atual R\$2.578,55'),
                ),
              ],
            ),
          ),
          CardWidget(
            icon: Icon(Icons.money_off),
            msg1: 'Pagando com',
            msg2: 'Conta',
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Agendado para'),
                TextButton(
                  onPressed: () {
                    DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      minTime: DateTime(2018, 3, 5),
                      maxTime: DateTime(2019, 6, 7),
                      onChanged: (date) {
                        print('change $date');
                      },
                      onConfirm: (date) {
                        print('confirm $date');
                      },
                      currentTime: DateTime.now(),
                    );
                  },
                  child: Text(
                    'Escolha uma data',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          CardWidget(
            msg1: 'Para',
            msg2: 'CEMIG DISTRIBUICAO',
          ),
          CardWidget(
            msg1: 'Código',
            msg2: '219083190238901238901374589237148-',
          ),
        ],
      ),
    );
  }
}
