import 'package:conversormoedas/app/modules/home/presenters/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de Moedas'),
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                controller.onShare(context);
              },
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Dolar: R\$4,90',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Euro: R\$5,93',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Reais',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Observer(
                        builder: (_) => TextFormField(
                          onChanged: controller.homeStore.setvalor,
                          readOnly: false,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            labelText: 'Valor para conversão',
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Observer(
                    builder: (_) => Container(
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'CONVERTER',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          controller.converser();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Resultado:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Roboto', fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: const [
                              Text(
                                'Dolar: \$',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Observer(builder: (_) {
                                final euro = controller.homeStore.dolar;
                                return Text(
                                  euro != null ? controller.homeStore.dolar.toString() : '0,00',
                                  style: const TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                );
                              }),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: const [
                              Text(
                                'Euro: \$',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Observer(builder: (_) {
                                final euro = controller.homeStore.euro;
                                return Text(
                                  euro != null ? controller.homeStore.euro.toString() : '0,00',
                                  style: const TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                );
                              }),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.createItem();
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}
