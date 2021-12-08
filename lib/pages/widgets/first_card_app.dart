import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Column(
                          //All Card Alignment.
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.credit_card,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Cartão de Crédito',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 18, fontWeight:  FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 0, top: 0, bottom: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text('Fatura Atual ',
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 0, top: 0, bottom: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text.rich(
                                        TextSpan(text: 'R\$', children: [
                                          TextSpan(
                                              text: '600',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(text: ',37')
                                        ]),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.teal, fontSize: 25),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 0, top: 0, bottom: 0),
                                  child: Row(
                                    children: <Widget>[
                                      Text('Limite Disponível ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400)),
                                      Text('R\$ 10.000,00 ',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    //Lateral Color Column
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 13),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                  flex: 3,
                                  child: Container(color: Colors.amber)),
                              Expanded(
                                  flex: 3,
                                  child: Container(color: Colors.lightBlue)),
                              Expanded(
                                  flex: 3,
                                  child:
                                  Container(color: Colors.lightBlueAccent)),
                            ],
                          ),
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Colors.white24,
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          'Compra Mais Recente em Supermercado Nova Vitória de R\$ 500,00.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                color: Colors.grey[200],
              )),
        ],
      ),
    );
  }
}
