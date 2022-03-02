import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'history_controller.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage() : super();

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends ModularState<HistoryPage, HistoryController> {
  @override
  void initState() {
    super.initState();
    refreshJournals();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text('Historico de conversão'),
      ),
      body: ListView.builder(
        itemCount: controller.historyStore.journals.length,
        itemBuilder: (context, index) => Card(
          elevation: 20,
          color: Colors.grey,
          margin: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: SafeArea(
              minimum: const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    ' R\$${controller.historyStore.journals[index]['valor']}',
                       style: const TextStyle(
                        fontFamily: 'Roboto', fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text(
                        'Dolar: ${controller.historyStore.journals[index]['dolar']}',
                         style: const TextStyle(fontFamily: 'Roboto', fontSize: 16),
                      ),
                      Text(
                        'Euro: ${controller.historyStore.journals[index]['euro']}',
                        style: const TextStyle(fontFamily: 'Roboto', fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  refreshJournals() async {
    final data = await controller.getItensUsecase.call();
    setState(() {
      data.fold((left) => null, (right) {
        controller.historyStore.setJournalsEntity(right);
      });
    });
  }
}
