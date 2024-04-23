import 'package:ecommerce_ui/text.dart';
import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  final String image;
  final String price;
  final String name;
  const Productpage(
      {super.key,
      required this.price,
      required this.name,
      required this.image});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  @override
  Widget build(BuildContext context) {
    String sizevalue = 'Size';
    List<String> sizeitem = ['SIze', 'X', 'L', 'XL', 'M'];
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.98),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    widget.image,
                    height: size.height * 0.4,
                    width: size.width * 1,
                  ),
                  Container(
                    width: size.width * 0.3,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.7),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.auto_fix_high,
                          color: Colors.blueAccent[700],
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Textedit(
                            tittle: 'Try-on models',
                            color: Colors.black,
                            size: 10,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Textedit(
                    tittle: widget.name,
                    color: Colors.black,
                    size: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Textedit(
                        tittle: '4.3/5',
                        color: Colors.black,
                        size: 18,
                        fontWeight: FontWeight.w700),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Textedit(
                        tittle: '(22 user reviews)',
                        color: Colors.black.withOpacity(0.5),
                        size: 16,
                        fontWeight: FontWeight.w400),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.black.withOpacity(0.8),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Textedit(
                            tittle: 'Color:',
                            color: Colors.black,
                            size: 18,
                            fontWeight: FontWeight.w600),
                        Textedit(
                            tittle: ' Red',
                            color: Colors.black,
                            size: 19,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 50,
                        width: 40,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blue),
                            color: Colors.white),
                        child: Image.asset(
                          widget.image,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: size.height * 0.045,
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.7),
                                  blurRadius: 0.3,
                                  spreadRadius: 0.4)
                            ]),
                        child: Center(
                          child: DropdownButton<String>(
                            hint: const Textedit(
                                tittle: 'Size',
                                color: Colors.black,
                                size: 16,
                                fontWeight: FontWeight.w600),
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 22,
                            ),
                            underline: const SizedBox(),
                            items: sizeitem
                                .map<DropdownMenuItem<String>>((String items) {
                              return DropdownMenuItem<String>(
                                value: sizevalue,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                sizevalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.black.withOpacity(0.8),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.auto_graph_rounded),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        const Textedit(
                            tittle: 'Typically',
                            color: Colors.black,
                            size: 16,
                            fontWeight: FontWeight.w600),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        const Textedit(
                            tittle: '\$90-\$100',
                            color: Colors.black,
                            size: 16,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: size.height * 0.1,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.check_box),
                          const Textedit(
                              tittle: 'Antropologie',
                              color: Colors.blue,
                              size: 18,
                              fontWeight: FontWeight.w700),
                          Textedit(
                              tittle: '4.6/5',
                              color: Colors.black.withOpacity(0.8),
                              size: 14,
                              fontWeight: FontWeight.w400),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Row(
                            children: [
                              Textedit(
                                  tittle: '\$98.00',
                                  color: Colors.black,
                                  size: 18,
                                  fontWeight: FontWeight.w700)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.delivery_dining_sharp,
                              color: Colors.black.withOpacity(0.8),
                              size: 15,
                            ),
                            Textedit(
                                tittle: 'Free delivery by 20 may',
                                color: Colors.black.withOpacity(0.8),
                                size: 14,
                                fontWeight: FontWeight.w400)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
