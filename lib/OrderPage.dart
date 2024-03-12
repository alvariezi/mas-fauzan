import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List order = [
    'Deliver',
    'Pick Up',
  ];

  int current = 0;
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      setState(() {
        count--;
      });
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
            },
          ),
          title: const Text(
            'Order',
            style: TextStyle(
              fontFamily: 'Sora',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: ListView.builder(
                        itemCount: order.length,
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
                              width: 160,
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: current == index
                                    ? const Color.fromRGBO(198, 124, 78, 1)
                                    : const Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  order[index],
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: current == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Delivery Address',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Jl. Kpg Sutoyo',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_square,
                                size: 18,
                                color: Color.fromRGBO(48, 51, 54, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Edit Address',
                                style: TextStyle(
                                    fontFamily: 'Sora',
                                    color: Color.fromRGBO(48, 51, 54, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color.fromRGBO(222, 222, 222, 1),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.notes_outlined,
                                size: 18,
                                color: Color.fromRGBO(48, 51, 54, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Add Note',
                                style: TextStyle(
                                    fontFamily: 'Sora',
                                    color: Color.fromRGBO(48, 51, 54, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(234, 234, 234, 1),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/capucino.png',
                          height: 54,
                          width: 54,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cappucino',
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Color.fromRGBO(48, 51, 54, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'with Chocolate',
                              style: TextStyle(
                                  color: Color.fromRGBO(128, 128, 128, 1)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                decrement();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                            Text('$count'),
                            ElevatedButton(
                              onPressed: () {
                                increment();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 5,
                color: Color.fromRGBO(234, 234, 234, 1),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 350,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color.fromRGBO(234, 234, 234, 1),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(198, 124, 78, 1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.percent,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            const Text(
                              '1 Discount is applied',
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Color.fromRGBO(48, 51, 54, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 29,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16),
                        ),
                        Text(
                          '\$ 4.53',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          '\$ 2.0',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '\$ 1.0',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(234, 234, 234, 1),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16),
                        ),
                        Text(
                          '\$ 5.53',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 45, 44, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.money,
                          color: Color.fromRGBO(198, 124, 78, 1),
                        ),
                        Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(234, 234, 234, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(198, 124, 78, 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    'Cash',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '\$ 5.53',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(128, 128, 128, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(198, 124, 78, 1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 148, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Order',
                          style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}