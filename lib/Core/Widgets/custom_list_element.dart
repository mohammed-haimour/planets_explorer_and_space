import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';

class CustomListElement extends StatelessWidget {
  const CustomListElement({super.key, required this.imageUrl, required this.title, required this.subTitle, required this.url});

  final String imageUrl;
  final String title;
  final String subTitle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
        await Functions.goToUrl(context,url:url);
      },
      child: Padding(
        padding: ConstantsVariables.paddingNormal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: ConstantsVariables.paddingMedium,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), topLeft: Radius.circular(25)),
                    color: ConstantsVariables.colorBlack
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title , style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: ConstantsVariables.colorWhiteSmoke)),
                    SizedBox(
                        width: Functions.width(context) / 2.3,
                        child: Text(subTitle , style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w200,color: ConstantsVariables.colorWhiteSmoke ,fontSize: 10),maxLines: 2,overflow:TextOverflow.ellipsis))
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 165,
              padding: ConstantsVariables.paddingMedium,
              decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: ConstantsVariables.colorTransparentBlue , spreadRadius: 5 , blurRadius: 5)],
                  borderRadius: ConstantsVariables.radiusMedium,
                  color: ConstantsVariables.colorBlack
              ),
              child: FittedBox(
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    errorWidget: (context ,url ,error) => const Center(child: Icon(Icons.image_not_supported_outlined),),
                  )
              ),
              // child: ,
            )
          ],
        ),
      ),
    );
  }
}
