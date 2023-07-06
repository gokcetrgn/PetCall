import 'package:flutter/material.dart';
import 'package:petcall_app/anasayfa.dart';

class UygulamayaGecis extends StatefulWidget {
  const UygulamayaGecis({Key? key}) : super(key: key);

  @override
  State<UygulamayaGecis> createState() => _UygulamayaGecisState();
}

class _UygulamayaGecisState extends State<UygulamayaGecis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PetCall",
                    style: TextStyle(
                        fontSize:
                          MediaQuery.of(context).size.shortestSide * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.pets,
                    size: MediaQuery.of(context).size.shortestSide * 0.05,
                  ),
                ],
              ),
            ),
            Text(
              "Hayvanlarınızın tüm ihtiyaçlarını gideren platform",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.shortestSide * 0.07,
              fontWeight: FontWeight.bold),
            ),
            Image.asset("images/cat.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Erişmek için",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.shortestSide * 0.06,fontWeight: FontWeight.w600)),
                Icon(Icons.arrow_downward_outlined)
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                  )
                ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Anasayfa()));
                  },
                  child: Text("KEŞFET",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.shortestSide *
                              0.05,color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
