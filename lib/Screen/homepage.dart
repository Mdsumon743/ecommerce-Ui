import 'package:ecommerce_ui/Screen/productpage.dart';
import 'package:ecommerce_ui/text.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Price';
    List<String> items = ['Price', '100\$', '200\$', '300\$', '400\$'];
    String colorvalue = 'Color';
    List<String> coloritem = ['Color', 'Red', 'green', 'Blue', 'Yellow'];
    String patternvalue = 'Patern';
    List<String> patternitem = [
      'Patern',
      'Patern 1',
      'Patern 2',
      'Patern 3',
      'Patern 4'
    ];
    List<Map> details = [
      {
        'name': 'Womens Solid Evening\nPleated Chiffon Dress',
        'images': 'assets/images/dress1.jpg',
        'price': '\$100',
      },
      {
        'name': 'V neck Knee Length\nColourful Dress Plus ...s',
        'images': 'assets/images/dress2.jpg',
        'price': '\$120',
      },
      {
        'name': 'Women Zip Front Style\nSleeveless Denim Dress',
        'images': 'assets/images/dress3.jpg',
        'price': '\$150',
      },
      {
        'name': 'Mnycxen - Womens Dresses Womens\nFashion Off Shoulder',
        'images': 'assets/images/dress4.jpg',
        'price': '\$180',
      },
      {
        'name': 'Kenancy Summer Women\nDress Bohemian Floral',
        'images': 'assets/images/dress5.jpg',
        'price': '\$200',
      },
      {
        'name': 'Women Summer Polka Dot\nHalter Neck Dress Bohemian ',
        'images': 'assets/images/dress6.jpg',
        'price': '\$220',
      },
      {
        'name': 'Womens Solid Gaoun\nPleated page Dress',
        'images': 'assets/images/dress7.jpg',
        'price': '\$230',
      },
      {
        'name': 'T Shirt Dress Summer 2017\nFashion Short Sleeve Women',
        'images': 'assets/images/dress8.jpg',
        'price': '\$250',
      },
      {
        'name':
            'Women’s Plus Size Floral Fit\nand Flare Knee Length Tank Dress',
        'images': 'assets/images/dress9.jpg',
        'price': '\$280',
      },
      {
        'name': 'Womens Dress 100% Cotton\nFloral Summer Dress Mid Knee',
        'images': 'assets/images/dress10.jpg',
        'price': '\$300',
      },
    ];
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.98),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Textedit(
                  tittle: 'More options',
                  color: Colors.black,
                  size: 23,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: size.height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
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
                              tittle: 'Price',
                              color: Colors.black,
                              size: 16,
                              fontWeight: FontWeight.w600),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 22,
                          ),
                          underline: const SizedBox(),
                          items: items
                              .map<DropdownMenuItem<String>>((String items) {
                            return DropdownMenuItem<String>(
                              value: dropdownValue,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Container(
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
                              tittle: 'Color',
                              color: Colors.black,
                              size: 16,
                              fontWeight: FontWeight.w600),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 22,
                          ),
                          underline: const SizedBox(),
                          items: coloritem
                              .map<DropdownMenuItem<String>>((String items) {
                            return DropdownMenuItem<String>(
                              value: colorvalue,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              colorvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Container(
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
                              tittle: 'Patern',
                              color: Colors.black,
                              size: 16,
                              fontWeight: FontWeight.w600),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 22,
                          ),
                          underline: const SizedBox(),
                          items: patternitem
                              .map<DropdownMenuItem<String>>((String items) {
                            return DropdownMenuItem<String>(
                              value: patternvalue,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              patternvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Container(
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
                              tittle: 'Price',
                              color: Colors.black,
                              size: 16,
                              fontWeight: FontWeight.w600),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 22,
                          ),
                          underline: const SizedBox(),
                          items: items
                              .map<DropdownMenuItem<String>>((String items) {
                            return DropdownMenuItem<String>(
                              value: dropdownValue,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        GridView.builder(
                          itemCount: details.length,
                          shrinkWrap: true,
                          primary: false,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15,
                                  childAspectRatio: 0.6,
                                  crossAxisSpacing: 15,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            final data = details[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Productpage(
                                          price: data['price'],
                                          name: data['name'],
                                          image: data['images']),
                                    ));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        data['images'],
                                        height: size.height * 0.25,
                                        width: size.width * 1,
                                      ),
                                      Textedit(
                                          tittle: data['name'],
                                          color: Colors.black,
                                          size: 12,
                                          fontWeight: FontWeight.w700),
                                      Textedit(
                                          tittle: data['price'],
                                          color: Colors.black,
                                          size: 14,
                                          fontWeight: FontWeight.w700)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
