import 'package:facebook/modals/market_modal.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Market Place',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.search_outlined),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade100),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            childAspectRatio: (2 / 3),
            children: [
              for (var i = 0; i < marketData.length; i++) ...[
                InkWell(
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: NetworkImage(marketData[i].photo),
                          ),
                        ),
                        Text(
                          marketData[i].title,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(marketData[i].price.toString(),
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    print('Bikes 2 months clicked');
                  },
                )
              ]
            ],
          ),
        ),
      ],
    );
  }
}
