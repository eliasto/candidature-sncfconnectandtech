import 'package:flutter/material.dart';
import 'package:sncf_connect/assets/constants.dart';
import 'package:sncf_connect/widgets/help.dart';

class MyMotivations extends StatelessWidget {
  const MyMotivations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrayColor,
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 15,
                child: Icon(
                  Icons.chevron_left_outlined,
                  size: 40,
                  color: Colors.white,
                )),
          ),
        ),
        title: const Text(
          'Mes motivations',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        backgroundColor: lightGrayColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/motivation.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Text("Mais pourquoi devriez-vous m'engager ?",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text(
                      "J'adore voyager (et surtout en train, j'??cris ces mots dans le TGV 9570 !). Que ce soit pour faire mes aller-retour entre Gare de l'Est et Strasbourg, en InterRail ?? travers l'Europe, ?? bord des KTX en Cor??e du Sud (ce r??seau existe gr??ce ?? la SNCF, incroyable !) ou encore des Shinkansen japonais, j'ai vu comment la mobilit?? fonctionne aux quatre coins du monde.\n\nJe veux ??tre un acteur de la mobilit?? de demain, et je pense qu'il n'y a pas meilleur endroit que chez SNCF Connect & Tech pour le faire : SNCF Connect est le plus gros projet Flutter d'Europe et le plus grand site e-commerce dans ce secteur en France. Le d??fi s'annonce de taille !\n\nJe souhaite innover pour permettre de rendre les mobilit??s durables une r??alit??, et je pense que je peux ??tre un acteur avec mes comp??tences en rejoignant votre ??quipe (et puis vous utilisez Next.JS/React.JS, Node.JS et Flutter, les technologies que j'utilise principalement : cela me donne encore plus envie de vous rejoindre). Je suis un jeune homme avec la t??te pleine de r??ves et qui ne souhaite que les r??aliser.\nJe me ferais un plaisir d'avoir un entretien avec vous pour discuter plus en d??tail de mes motivations et de mes comp??tences.\n\nMerci d'avoir pris le temps d'explorer cette application,\nElias.")),
              const Help()
            ],
          ),
        ),
      ),
    );
  }
}
