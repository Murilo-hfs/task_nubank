import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_nubank/app/controllers/text_controller.dart';
import 'package:task_nubank/app/screens/bill_screen.dart';
import 'package:task_nubank/app/screens/confirm_payment.dart';
import 'package:task_nubank/app/screens/home_page.dart';
import 'package:task_nubank/app/utils/app_routes.dart';

import 'controllers/date_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TextController(),
        ),
        ChangeNotifierProvider(
          create: (_) => DateController(),
        ),
      ],
      child: MaterialApp(
          title: 'Nubank Task',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
          ),
          routes: {
            AppRoutes.HOME: (ctx) => HomePage(),
            AppRoutes.BILL: (ctx) => BillScreen(),
            AppRoutes.CONFIRM_PAYMENT: (ctx) => ConfirmPayment(),
          }),
    );
  }
}
