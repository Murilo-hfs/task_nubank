import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:task_nubank/app/controllers/date_controller.dart';
import 'package:task_nubank/app/controllers/text_controller.dart';

import 'package:task_nubank/app/utils/app_routes.dart';
import 'package:task_nubank/app/widgets/card_widget.dart';

class BillScreen extends StatefulWidget {
  @override
  _BillScreenState createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  final Widget title = Text('Seu boleto é...');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColumnWidget(),
          TextButton(
            style: ButtonStyle(),
            child: Text('CONFIRMAR AGENDAMENTO'),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.CONFIRM_PAYMENT);
            },
          ),
        ],
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(context) {
    final dateController = Provider.of<DateController>(context).dateController;
    final textController = Provider.of<TextController>(context).textController;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Column(
              children: [
                TextWithStyle(msg: 'Você está pagando'),
                TextWithStyle(msg: 'R\$74.55'),
                Text('Saldo disponivel atual R\$2.578,55'),
              ],
            ),
            CardWidget(
              icon: Icon(Icons.attach_money),
              msg1: 'Pagando com',
              msg2: 'Conta',
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(Icons.calendar_today_outlined),
                      ),
                      Text('Agendado para'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(
                        context,
                        showTitleActions: true,
                        minTime: DateTime(2021, 1, 12),
                        maxTime: DateTime(2023, 1, 12),
                        onChanged: (date) {
                          print('change $date');
                        },
                        onConfirm: (date) {
                          print('confirm $date');
                        },
                        currentTime: DateTime.now(),
                      ).then((selectedDate) => {
                            if (selectedDate != null)
                              {
                                dateController.text =
                                    selectedDate.toIso8601String()
                              }
                          });
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
              msg2: '${textController.text}',
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithStyle extends StatelessWidget {
  final String msg;
  const TextWithStyle({
    this.msg,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
