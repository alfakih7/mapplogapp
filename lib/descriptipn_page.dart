import 'package:flutter/material.dart';

//strins bacon its for putting a text in all the descriptions pages w lazem ykoun v s6ra wa7de yak ysla7 +  v nihaytou semicolon ;
//baconText its the name of the variable
String baconText =
    'Bacon ipsum dolor amet ball tip filet mignon turducken, tongue bresaola venison tenderloin short loin swine alcatra ham beef t-bone beef ribs. Strip steak prosciutto burgdoggen chicken buffalo, leberkas pork loin ball tip. Sausage ribeye chislic, t-bone boudin biltong pork chop bresaola shoulder. Biltong boudin ribeye andouille tenderloin cupim prosciutto pork loin kevin short ribs buffalo shoulder tongue jerky jowl. Tri-tip brisket shoulder, tail meatloaf landjaeger turkey pork beef pork chop ham turducken spare ribs beef ribs pastrami. Chicken pork loin ball tip pork chop pastrami. Rump pork belly bresaola, doner shank prosciutto venison pork loin frankfurter. Shank porchetta flank bresaola, pancetta tenderloin strip steak doner tail kielbasa beef ball tip pork chop pastrami. Flank kielbasa picanha, pork chop boudin burgdoggen bacon salami beef ribs pig frankfurter tenderloin alcatra. Pastrami short loin ham ribeye corned beef turkey picanha beef ribs drumstick short ribs strip steak buffalo. Picanha shoulder capicola, drumstick pancetta cupim corned beef strip steak. Spare ribs chuck kevin, ball tip ribeye hamburger turducken venison biltong buffalo. Meatball fatback meatloaf flank. Meatloaf fatback frankfurter, tongue ribeye short ribs landjaeger brisket ham andouille leberkas shankle';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title, 
    required this.imagePath,
  });
  final String title; 
  final String
      imagePath; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
