import 'package:flutter/material.dart';
import 'package:signify/models/utility.dart';
import 'package:signify/ui/Student/tutorial_page.dart';

class Subjectspage extends StatelessWidget {
  const Subjectspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subjects'),
        backgroundColor: const Color.fromARGB(255, 233, 223, 190),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 5),
          shrinkWrap: true,
          itemCount: Utility.verticallst.length,
          itemBuilder: (context, ind) {
            return customverticalcard(
                Utility.verticallst[ind][0],
                Utility.verticallst[ind][1],
                Utility.verticallst[ind][2],
                context,
                ind);
          }),
    );
  }

  customverticalcard(imgurl, tittle, subtittle, BuildContext context, ind) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => YoutubePlayerScreen(
                      youtubeurl: Utility.youtubeurl[ind],
                      tittle: tittle,
                    )));
      },
      child: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()),
                          child: Image.asset(imgurl)),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        tittle,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                      ),
                      Text(subtittle)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
