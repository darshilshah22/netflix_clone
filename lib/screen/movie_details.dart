import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/data/models/movie_model.dart';

import '../utils/globals.dart';

class MovieDetails extends StatefulWidget {
  final MovieModel? movie;
  const MovieDetails({super.key, this.movie});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  void initState() {
    setState(() {
      moreLikeThis.shuffle();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(
              CupertinoIcons.search,
              size: 28,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Flexible(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 32),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: widget.movie!.bigImage!,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    widget.movie!.title!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 8, left: 16, right: 16),
                      child: Text(
                        widget.movie!.year.toString(),
                        style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color(0xFF262626),
                      margin:
                          const EdgeInsets.only(top: 6, left: 12, right: 16),
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: const Text(
                        'U/A 13+',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: buildButton(
                    title: "Play",
                    icon: Icons.play_arrow_rounded,
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: buildButton(
                    title: "Download",
                    icon: Icons.file_download_outlined,
                    color: const Color(0xFF262626),
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
                  child: Text(
                    widget.movie!.description!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 16),
                  child: Text.rich(
                    TextSpan(
                      text: "Genre: ",
                      children: [
                        TextSpan(
                          text: widget.movie!.genre!.join(", "),
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width / 1.5,
                //   margin: const EdgeInsets.only(
                //       top: 16, left: 40, right: 16, bottom: 24),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Container(
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                 color: Colors.transparent,
                //               ),
                //             ),
                //             child: const Icon(
                //               Icons.add,
                //               size: 45,
                //               color: Colors.white,
                //             ),
                //           ),
                //           const Text(
                //             "My List",
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 16,
                //               fontWeight: FontWeight.w400,
                //             ),
                //           )
                //         ],
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Container(
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                 color: Colors.transparent,
                //               ),
                //             ),
                //             child: const Icon(
                //               Icons.thumb_up_alt_rounded,
                //               size: 42,
                //               color: Colors.white,
                //             ),
                //           ),
                //           const Text(
                //             "Rate",
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 16,
                //               fontWeight: FontWeight.w400,
                //             ),
                //           )
                //         ],
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Container(
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                 color: Colors.transparent,
                //               ),
                //             ),
                //             child: const Icon(
                //               Icons.share,
                //               size: 45,
                //               color: Colors.white,
                //             ),
                //           ),
                //           const Text(
                //             "Share",
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 16,
                //               fontWeight: FontWeight.w400,
                //             ),
                //           )
                //         ],
                //       )
                //     ],
                //   ),
                // ),

                const Divider(
                  height: 0,
                  color: Color(0xFF262626),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16, left: 16),
                  child: const Text(
                    "More Like This",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12),
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  itemCount: moreLikeThis.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetails(
                              movie: moreLikeThis[index],
                            ),
                          ),
                        );
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                              imageUrl: moreLikeThis[index].image!)),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(
      {String? title,
      IconData? icon,
      Color? color,
      Color? textColor,
      VoidCallback? onTap}) {
    return Container(
      margin: const EdgeInsets.only(top: 16, right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: textColor,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            title!,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
