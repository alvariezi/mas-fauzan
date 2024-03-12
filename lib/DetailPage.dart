import 'package:flutter/material.dart';
import 'package:tugas/OrderPage.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List size = [
    'S',
    'M',
    'L',
  ];

  int current = 0;
  bool _iconClicked = false;
  Color _iconColor = Colors.black;

  void _changeIconColor() {
    setState(() {
      _iconClicked = !_iconClicked;
      _iconColor = _iconClicked ? Colors.red : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 90,
          centerTitle: true,
          leading: IconButton(
            padding: const EdgeInsets.only(left: 30),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 28,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            'Detail',
            style: TextStyle(
              fontFamily: 'Sora',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 30),
              icon: Icon(
                Icons.favorite_border_outlined,
                color: _iconColor,
                size: 28,
              ),
              onPressed: _changeIconColor,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/capucino.png',
                  width: 250,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cappucino',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'with Chocolate',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(155, 155, 155, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(251, 190, 33, 1),
                                    size: 20,
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 5,
                                  ),
                                ),
                                TextSpan(
                                  text: '4.8',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 5,
                                  ),
                                ),
                                TextSpan(
                                  text: '(230)',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(155, 155, 155, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const Icon(
                                  Icons.coffee,
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const Icon(
                                  Icons.local_drink,
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Color.fromRGBO(234, 234, 234, 1),
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 300,
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                                style: TextStyle(
                                  letterSpacing: 0.8,
                                  fontFamily: 'Sora',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(155, 155, 155, 1),
                                ),
                              ),
                              TextSpan(
                                text: 'Read More',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Size',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: ListView.builder(
                              itemCount: size.length,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    height: 43,
                                    width: 100,
                                    duration: const Duration(milliseconds: 300),
                                    margin: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: current == index
                                          ? const Color.fromRGBO(
                                              255, 245, 238, 1)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: current == index
                                          ? Border.all(
                                              color: const Color.fromRGBO(
                                                  198, 124, 78, 1),
                                            )
                                          : Border.all(color: Colors.black),
                                    ),
                                    child: Center(
                                      child: Text(
                                        size[index],
                                        style: TextStyle(
                                          fontFamily: 'Sora',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: current == index
                                              ? const Color.fromRGBO(
                                                  198, 124, 78, 1)
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$ 4.53',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(198, 124, 78, 1),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OrderPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 70),
                                backgroundColor: const Color(0xffC67C4E),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontFamily: 'Sora',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}