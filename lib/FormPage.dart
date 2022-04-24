import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

enum Film { Film1, Film2, Film3, Film4 }
enum JamTayang { Jam1, Jam2, Jam3, Jam4, Jam5 }

class _FormPageState extends State<FormPage> {
  String nama = '', NoHp = '', JumlahTiket = '';
  final ctrlNama = TextEditingController();
  final ctrlNoHp = TextEditingController();
  final ctrlJumlahTiket = TextEditingController();
  bool vaksin = false;
  Film film = Film.Film1;
  JamTayang jam = JamTayang.Jam1;

  @override
  void dispose() {
    ctrlNama.dispose();
    ctrlNoHp.dispose();
    ctrlJumlahTiket.dispose();
    super.dispose();
  }

  String getFilm(Film value) {
    if (value == Film.Film1) {
      return "Doctor Strange in the Multiverse of Madness";
    } else if (value == Film.Film2) {
      return "Sonic 2 the Hedgehog";
    } else if (value == Film.Film3) {
      return "KKN di Desa Penari";
    } else if (value == Film.Film4) {
      return "Fantastic Beasts: Secrets of Dumbledore";
    }
    return '';
  }

  String getJamTayang(JamTayang value) {
    if (value == JamTayang.Jam1) {
      return "12:00";
    } else if (value == JamTayang.Jam2) {
      return "14:30";
    } else if (value == JamTayang.Jam3) {
      return "17:00";
    } else if (value == JamTayang.Jam4) {
      return "19:30";
    } else if (value == JamTayang.Jam5) {
      return "22:00";
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Color.fromARGB(255, 3, 3, 100),
        ),
        title: Text(
          "CINEPOLIS",
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
              SizedBox(height: 30),
              Text(
                '~ Form Pemesanan Tiket Bioskop ~',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 3, 100),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                  controller: ctrlNama,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Isikan Nama',
                    labelText: 'Nama',
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                  controller: ctrlNoHp,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Isikan Nomor Handphone (08xxxxxxxx)',
                    labelText: 'Nomor Handphone',
                    icon: Icon(Icons.phone_android),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                  controller: ctrlJumlahTiket,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Isikan Jumlah Tiket (contoh : 2)',
                    labelText: 'Jumlah Tiket',
                    icon: Icon(Icons.confirmation_number),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Daftar Film',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 3, 3, 100),
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Text(
                  'Doctor Strange in the Multiverse of Madness',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: film,
                  value: Film.Film1,
                  onChanged: (Film? value) {
                    setState(() {
                      film = value!;
                    });
                  },
                ),
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Doctor Strange.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Sonic 2 the Hedgehog',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: film,
                  value: Film.Film2,
                  onChanged: (Film? value) {
                    setState(() {
                      film = value!;
                    });
                  },
                ),
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Sonic.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'KKN di Desa Penari',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: film,
                  value: Film.Film3,
                  onChanged: (Film? value) {
                    setState(() {
                      film = value!;
                    });
                  },
                ),
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/KKN di Desa Penari.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Fantastic Beasts: Secrets of Dumbledore',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: film,
                  value: Film.Film4,
                  onChanged: (Film? value) {
                    setState(() {
                      film = value!;
                    });
                  },
                ),
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Fantastic Beasts.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Jam Tayang',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 3, 3, 100),
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Text(
                  '12:00',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: jam,
                  value: JamTayang.Jam1,
                  onChanged: (JamTayang? value) {
                    setState(() {
                      jam = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  '14:30',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: jam,
                  value: JamTayang.Jam2,
                  onChanged: (JamTayang? value) {
                    setState(() {
                      jam = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  '17:00',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: jam,
                  value: JamTayang.Jam3,
                  onChanged: (JamTayang? value) {
                    setState(() {
                      jam = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  '19:30',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: jam,
                  value: JamTayang.Jam4,
                  onChanged: (JamTayang? value) {
                    setState(() {
                      jam = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  '22:00',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Radio(
                  groupValue: jam,
                  value: JamTayang.Jam5,
                  onChanged: (JamTayang? value) {
                    setState(() {
                      jam = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Sudah Vaksin?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 3, 100),
                  ),
                ),
                leading: Checkbox(
                  value: vaksin,
                  onChanged: (bool? value) {
                    setState(() {
                      vaksin = value!;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 140,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nama = ctrlNama.text;
                      NoHp = ctrlNoHp.text;
                      JumlahTiket = ctrlJumlahTiket.text;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 3, 3, 100)),
                  child: Text(
                    'Pesan Tiket',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 210,
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 9, 9, 255),
                    ),
                    child: Text(
                      '\nNama             : $nama\n\nNo Hp            : $NoHp\n\nJudul Film     : ${getFilm(film)}\n\nJam Tayang  : ${getJamTayang(jam)}\n\nJumlah Tiket : $JumlahTiket\n\nKeterangan    : ${vaksin ? 'Sudah Vaksin' : 'Belum Vaksin'}\n',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
