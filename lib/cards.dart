import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final String bank;
  final String cardNumber;
  final String amountMoney;
  final Color color;

  const CreditCard({
    Key key,
    @required this.bank,
    @required this.cardNumber,
    @required this.amountMoney,
    @required this.color
  })  : assert(bank != null),
        assert(cardNumber != null),
        assert(amountMoney != null),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top:30, right: 30, left: 30),
        child: Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(20),
              color: color,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              this.bank,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 40, left: 30),
                            child: Text(this.cardNumber, style: TextStyle(fontSize: 18),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 30, bottom: 15),
                            child: Text("\$ ${this.amountMoney}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
