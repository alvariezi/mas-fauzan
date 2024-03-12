import 'package:flutter/material.dart';
import 'package:tugas/DetailPage.dart';
import 'package:tugas/ProfilPage.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> location = [
    'Bilzen, Tanjungbalai',
    'Singotrunan, Banyuwangi',
    'Pengantigan, Banyuwangi',
    'Srono, Banyuwangi',
  ];
  String selectLocation = '';

  final List<String> coffe = [
    'Cappucino',
    'Machiato',
    'Latte',
    'Americano',
  ];


  List imglist = [
    'capucino',
    'susu',
    'cincau',
    'hitam'
  ];

  List priceList = [
    '\$ 4.53',
    '\$ 3.90',
    '\$ 4.54' , 
    '\$ 3.54' , 
      ];

  List deskripsi = [
    'with chocolate',
    'with oat milk',
    'with milk',
    'with you'
  ];

  List bintangimg  = [
    'startcino',
    'starsu',
    'starcau',
    'startam',
  ];
  
  int current = 0 ;
  int _selectedIndex = 0 ;

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 1),
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(19, 19, 19, 1),
                      Color.fromRGBO(49, 49, 49, 1),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Location',
                          style: TextStyle(
                            fontFamily: 'Sora-Regular',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            DropdownButton<String>(
                              dropdownColor: Colors.black,
                              value: selectLocation.isEmpty
                                  ? null
                                  : selectLocation,
                              hint: const Text(
                                'Search Location',
                                style: TextStyle(
                                  fontFamily: 'Sora-Regular',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              items: location.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                      fontFamily: 'Sora-Regular',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                selectLocation = value!;
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            Transform.translate(
                              offset: const Offset(25.0, -15.0),
                              child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProfilPage(),
            ));
          },
          child: Image.asset('assets/images/profil.png'),
        ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Sora-Regular',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: 'Search Coffe',
                            hintStyle: const TextStyle(
                              fontFamily: 'Sora-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            suffixIcon: Container(
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(198, 124, 78, 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(Icons.tune,color: Colors.white,),
                            ),
                            fillColor: const Color.fromRGBO(49, 49, 49, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -70),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('assets/images/baner.png',),
                        )
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(15, -55),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const ColoredBox(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(6, 4, 6, 4),
                          child: Text(
                            'Promo',
                            style: TextStyle(
                              fontFamily: 'Sora-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(15, -7),
                    child: Container(
                      width: 195,
                      height: 27,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Transform.translate(
                    offset: const Offset(15, 30),
                    child: Container(
                      width: 149,
                      height: 23,
                      color: Colors.black,
                    ),
                  ),
                  Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(15, -24),
                        child: const Text(
                          'Buy one get\none FREE',
                          style: TextStyle(
                            fontFamily: 'Sora-Regular',
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.translate(offset: 
              Offset(46, -50),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: coffe.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                        current = index ;    
                        });
                      },
                      child: AnimatedContainer(duration: 
                      Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(5),
                      width: 120,
                      height: 45,
                      decoration: BoxDecoration(
                        color: current == index 
                               ? Color.fromRGBO(198, 124, 78, 1)
                               : Colors.white,
                        borderRadius: current == index 
                                      ? BorderRadius.circular(15)
                                      : BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(coffe[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sora-Regular',
                          color: current == index 
                                ? Colors.white
                                : Colors.black
                        ),
                        ),
                      ),
                      ),
                    );
                  }),
              )
              ),
              Transform.translate(offset: 
              Offset(0, -100),
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      itemCount: imglist.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25)/ (4 * 300),
                        mainAxisExtent: 300,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                             DetailPage()),
                                                  );

                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                            
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top : 8),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                  child: Image.asset('assets/images/${imglist[index]}.png',
                                  ),
                                  ),
                                  Image.asset('assets/images/${bintangimg[index]}.png')
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    imglist[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    deskripsi[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.5)
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        priceList[index],
                                        style: const TextStyle(
                                          fontFamily: 'Sora-Regular',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(47, 74, 78, 1),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 60,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                198, 124, 78, 1),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            
                          );
                        },
                      )
                  ],
                ),
              )
              )
            ],
          ),
        ),
         bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(198, 124, 78, 1),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
     ),
  ),
    );
 }
}