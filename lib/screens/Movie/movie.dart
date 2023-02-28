import 'package:ott_demo/screens/Movie/recommendation/reccomendation.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "Top Recommendation Playlist",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reccomendation()));
                    },
                    child: SizedBox(
                      height: 250,
                      child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 180,
                                      width: 350,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1580130775562-0ef92da028de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                            fit: BoxFit.fill,
                                          ),
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 239, 235, 235),
                                              width: 2.0,
                                              style: BorderStyle.solid),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 145, 143, 143)
                                                  .withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 5,
                                              offset: const Offset(0,
                                                  0), // changes x,y position of shadow
                                            ),
                                          ],
                                          shape: BoxShape.rectangle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: const [
                                            Icon(Icons.favorite)
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 200,
                                        ),
                                        Column(
                                          children: const [
                                            Text("Washington D.C.")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 5),
                    child: Text(
                      "Mostly watched",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: SizedBox(
                      height: 550,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1.65 / 1.1,
                        ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                InkWell(
                                  borderRadius: const BorderRadius.only(),
                                  onTap: () {},
                                  child: Container(
                                    height: 200,
                                    width: 500,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://marketplace.canva.com/EAFH3gODxw4/1/0/1131w/canva-black-%26-white-modern-mystery-forest-movie-poster-rLty9dwhGG4.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        border: Border.all(
                                            color: const Color(0xFF000000),
                                            width: 2.0,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Icon(Icons.favorite_border)
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 210,
                                      ),
                                      Column(
                                        children: const [
                                          Text("Upcoming Movies")
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Favourite Show",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                          itemCount: 50,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(10),
                                    onTap: () {},
                                    child: Container(
                                      height: 180,
                                      width: 350,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1559583109-3e7968136c99?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                            fit: BoxFit.fill,
                                          ),
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 82, 80, 80),
                                              width: 2.0,
                                              style: BorderStyle.solid),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          shape: BoxShape.rectangle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: const [
                                            Icon(Icons.favorite)
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 200,
                                        ),
                                        Column(
                                          children: const [
                                            Text("MOULIN ROUGE")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  const Text(
                    "Best Actor's",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 80,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "data:image/jpeg;base64,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"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                  const Text("Jordan Belfort")
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
