import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(HakMuslim());

class HakMuslim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Choice> choices = const <Choice>[
      const Choice(
           title: 'Mengucapkan salam'
          ,description: 'Mengucapkan salam ke sesama muslim adalah sunnah yang sangat dianjurkan. \n\n Ini merupakan penyebab tumbuhnya rasa cinta di kalangan kaum muslimin sebagaimana yang diajarkan oleh Rasulullah Saw:\Demi Allah tidak akan masuk surga hingga kalian beriman dan tidak beriman hingga kalian saling mencintai. Maukah kuberitahukan sesuatu yang jika kalian lakukan akan menumbuhkan rasa cinta di antara kalian?, Sebarkan salam di antara kalian\ (HR. Muslim).'
      ),

      const Choice(
          title: 'Memenuhi Undangan'
          ,description: 'Memenuhi undangan adalah sunnah mu’akkadah. Hal itu dapat membuat orang yang mengundang senang, serta menumbuhkan rasa cinta dan kasih sayang. Lain halnya dengan memenuhi undangan pernikahan, sebab memenuhi undangan pernikahan adalah wajib dengan syarat-syarat yang telah dikenal.\n\n\Dan siapa yang tidak memenuhi (undangannya) maka dia telah maksiat kepada Allah dan Rasul-Nya.\ (HR. Bukhori dan Muslim).'
          ),

      const Choice(
          title: 'Memberi nasihat'
          ,description: 'Yaitu jika seseorang datang meminta nasihat kepadamu dalam suatu masalah maka nasihatilah. Sebagaimana hadits Rasulullah Saw:\n\n\Agama adalah nasihat: Kepada Allah, Kitab-Nya, Rasul-Nya dan kepada para pemimpin kaum muslimin serta rakyat pada umumnya.\ (HR. Muslim).'
      ),

      const Choice(
          title: 'Menjawab Yarhamukallah saat yang bersin mengucapkan Hamdalah'
          ,description: 'Orang yang bersyukur kepada Allah saat bersin, maka ia berhak untuk diberikan ucapan Yaharmukallah. Sebaliknya, jika tidak mengucapkan Hamdalah, maka ia tidak wajib diberikan ucapan Yaharmukallah. Itulah balasan bagi orang yang bersin tetapi tidak mengucapkan hamdalah./n/nMenjawab orang yang bersin (jika dia mengucapkan hamdalah) hukumnya wajib, dan wajib pula menjawab orang yang mengucapkan \Yarhamukallah\ dengan ucapan \Yahdikumullah wa yuslih balakum\, dan jika seseorang bersin terus menerus lebih dari tiga kali maka keempat kalinya ucapkanlah \Syafakallah\ (Semoga Allah menyembuhkanmu) sebagai ganti dari ucapan \Yarhamukallah\.'
      ),

      const Choice(
          title: 'Membesuknya saat sakit'
          ,description: 'Hak orang sakit adalah mendapatkan jengukan dari saudaranya. Dan merupakan kewajiban bagi saudara-saudaranya yang seiman. Terlebih jika yang sakit memiliki kekerabatan, teman dan tetangga maka membesuknya sangat dianjurkan.\n\nDisunnahkan bagi yang membesuk orang sakit untuk menanyakan keadaannya, mendoakannya serta menghiburnya dan memberinya harapan karena hal tersebut merupakan sebab yang paling besar mendatangkan kesembuhan dan kesehatan.\n\nPenting juga untuk mengingatkannya akan taubat dengan cara yang tidak menakutkannya, misalnya seperti berkata kepadanya:\n\n\Sesungguhnya sakit yang engkau derita sekarang ini mendatangkan kebaikan, karena penyakit dapat berfungsi menghapus dosa dan kesalahan dan dengan kondisi yang tidak dapat kemana-mana engkau dapat meraih pahala yang banyak, dengan membaca zikir, istighfar dan berdoa\.'
      ),

      const Choice(
          title: 'Mengantarkan jenazah'
          ,description: 'Diantarkan jenazah seorang muslim ke peristirahatan terakhirnya merupakan hak seorang muslim atas saudaranya dan di dalamnya terdapat pahala yang besar.\n\n\Siapa yang mengantarkan jenazah hingga menshalatkannya maka baginya pahala satu qhirath, dan siapa yang mengantarkannya hingga dimakamkan maka baginya pahala dua qhirath\, beliau ditanya: \Apakah yang dimaksud qhirath ?\, beliau menjawab: \Bagaikan dua gunung yang besar\ (HR. Bukhori dan Muslim). ')
    ];


    return  MaterialApp(
        home: Scaffold(

        appBar: AppBar(
        title: Text("Hak Muslim"),
          centerTitle: true,
    ),
    body: new ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.all(20.0),
    children: List.generate(choices.length, (index) {
    return Center(
    child: ChoiceCard(choice: choices[index], item: choices[index]),
    );
      }
        )
          )
           )
            );
  }


}

class Choice {
  final String title;
  final String description;

  const Choice({this.title, this.description});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(16.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),

            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}
