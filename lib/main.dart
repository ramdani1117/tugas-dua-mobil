import 'package:flutter/material.dart';

void main() {
  runApp(const BussinessCard());
}

class BussinessCard extends StatelessWidget {
  const BussinessCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TampilanKartu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TampilanKartu extends StatelessWidget {
  const TampilanKartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 193, 136),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://asset.kompas.com/crops/DQkpRn-9GTe2_SR2jjvU3wqP_o4=/145x131:935x657/1200x800/data/photo/2022/09/18/63272a0273dca.jpg'),
              backgroundColor: Colors.lightGreen,
              radius: 70,
            ),
            Text('Rian ramdani',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            
            ),
            Text(' Teknik Informatika',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.call), 
                title: Text('083836459308'),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.mail), 
                title: Text('rianramdani171104@gmail.com'),
                subtitle: Text('No Handphone'),
                trailing: Icon(Icons.arrow_circle_right_sharp),
                tileColor: Colors.grey,
                
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.mail_lock_rounded), 
                title: Text('@rianramdani'),
              ),
            ),

            
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.location_city), 
                title: Text('JL. Maniis Raya'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}