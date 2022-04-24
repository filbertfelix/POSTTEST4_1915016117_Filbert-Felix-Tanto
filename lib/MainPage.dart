import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest4_1915016117_filbert_felix_tanto/FormPage.dart';
import 'package:posttest4_1915016117_filbert_felix_tanto/main.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.refresh),
        ],
        flexibleSpace: Container(
          color: Color.fromARGB(255, 3, 3, 100),
        ),
        title: Text(
          'CINEPOLIS',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 167, 229, 245),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Doctor Strange.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Doctor Strange in the Multiverse of Madness\n',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 3, 100),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Genre      : Action, Adventure, Fantasy\n\nDuration : 126 Minutes \n\nRating     : R (13+)',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Sonic.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Sonic the Hedgehog 2\n',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 3, 100),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Genre      : Action, Adventure, Comedy\n\nDuration : 122 Minutes \n\nRating     : SU (Semua Umur)',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/KKN di Desa Penari.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'KKN di Desa Penari\n',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 3, 100),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Genre      : Horror\n\nDuration : 130 Minutes \n\nRating     : D (17+)',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Fantastic Beasts.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Fantastic Beasts: Secrets of Dumbledore\n',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 3, 100),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Genre      : Adventure, Family, Fantasy\n\nDuration : 142 Minutes \n\nRating     : SU (Semua Umur)',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 270,
                height: 50,
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return FormPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 3, 3, 100)),
                  child: Text(
                    'Buy Ticket',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
