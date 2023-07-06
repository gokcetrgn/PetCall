import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var resimler = <String>[
    "images/veterinary.png",
    "images/park.png",
    "images/petfood.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        leading: Container(
            decoration: BoxDecoration(
              color:
                  Colors.grey.shade200, // Arka plan rengi burada belirleniyor
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.menu))),
        title: Text(
          "Hoş geldin!",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.shortestSide * 0.05),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Ne yapmak istersin?",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.shortestSide * 0.08,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, left: 8.0, bottom: 8.0),
                          child: SizedBox(
                            height: 200,
                            child: Card(
                              color: Colors.grey.shade300,
                              child: Row(
                                children: [
                                  Image.asset("${resimler[index]}"),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        _getTextByIndex(index),
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: SizedBox(
              height: 36,
              width: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home,color: Colors.black,)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.person,color: Colors.black,)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings,color: Colors.black,)),
                ],
              )),
        ),
      ),
    );
  }

  String _getTextByIndex(int index) {
    if (index == 0) {
      return "Müsait olan/olmayan veterinerlere ulaşabilirsin.";
    } else if (index == 1) {
      return "Hayvanlarını gezdirmek için arkadaş bulabilirsin.";
    } else if (index == 2) {
      return "Hayvanlarının ihtiyacı için alışveriş yapabilirsin.";
    } else {
      return "";
    }
  }
}
