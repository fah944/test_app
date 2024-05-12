import 'package:flutter/material.dart';


class ProductGridWidget extends StatelessWidget
 {
  
    final int productCount;
    final double mainASpacing;// 3.7,
    final double crossASpacing;// 3.7,
    final double childAspectRatio;// 1 / 1.70
    List<Widget> children;

    ProductGridWidget({super.key,required this.productCount,required this.childAspectRatio,required this.crossASpacing,required this.mainASpacing,required this.children});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(3.7),
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: mainASpacing,
                crossAxisSpacing: crossASpacing,
                childAspectRatio: childAspectRatio,
                children:children,
                 /*List.generate(
                   productCount,
                (index) => function)*/
                ),
          ],
        ),
      ),
    );
  }
}

   /* Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'date',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:  TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () { },
                      icon: const Icon(
                        Icons.delete,
                        size: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),*/




           /*  Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              IconButton(
                onPressed: () { },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),*/