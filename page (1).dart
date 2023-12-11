import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/widgets/list_btn.dart';
import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter_svg/svg.dart';

class ListItemsPage extends StatefulWidget {
  const ListItemsPage({super.key});

  @override
  State<ListItemsPage> createState() => _ListItemsPageState();
}

class _ListItemsPageState extends State<ListItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        endDrawer: SafeArea(
          child: Drawer(
            width: double.infinity,
            backgroundColor: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      ListBtn(onPressed: () {}, text: "High walk"),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListBtn(onPressed: () {}, text: "Flights"),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListBtn(onPressed: () {}, text: "Hotels"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Hello",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 38),
            child: SizedBox(
              width: 325,
              child: ListView.separated(itemBuilder: (context, index){
                return CardsInfo(placeName: places[index], img: img[index], price: price[index],area: area[index],);
              }, separatorBuilder: (context, index){
                return const SizedBox(
                  height: 14,
                );
              }, itemCount: places.length),
            ),
          ),
        )
    );
  }
  List<String> places = ["Peak Karakol", "Kel Suu", "Maison", "Olimp", "Son Kol"];
  List<String> area = ["Karakol, Issyk-Kol", "Ak-Sai Valley, Naryn", "Bosteri, Issyk-Kol", "Cholpon - Ata, Issyk-Kol", "Naryn"];
  //List<String> date = ["march 27 - 29, 2024", "march 27 - 29, 2024", "Maison", "Olimp", "Son Kol"];
  List<String> img = [Images.image1, Images.image2, Images.image3, Images.image4, Images.image4];
  List<String> price = ["\$550", "\$560", "\$1,450", "\$1,590", "\$2,530"];
}

class CardsInfo extends StatefulWidget {
  final String placeName;
  final String img;
  final String price;
  final String area;
  const CardsInfo({super.key, required this.placeName, required this.img, required this.price, required this.area});

  @override
  State<CardsInfo> createState() => _CardsInfoState();
}

class _CardsInfoState extends State<CardsInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 168,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(colors: [Color.fromARGB(255, 25, 25, 25),Color(0xff50707B).withOpacity(0.25)],)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 13, left: 13, top: 13, bottom: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        widget.img,
                        width: 85,
                        height: 95,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.placeName,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(Images.location),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.area,
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(Images.clock),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "march 27 - 29, 2024",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.price,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                            size: 30,
                          )),
                      InkWell(
                        onTap: () {
                          debugPrint("work");
                        },
                        child: Container(
                          width: 46,
                          height: 43,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff7EA3A1),
                                Color(0xff87E4DC)
                              ]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.zero,
                                  bottomLeft: Radius.zero,
                                  topLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(16))),
                          child: const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}