import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shimmer/shimmer.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://img.freepik.com/free-vector/medical-infographic-template_23-2148883052.jpg?w=900&t=st=1678636890~exp=1678637490~hmac=9a8d5fbb182f3a6151bec823b8593b230726ea95aeb43e44d506cca344d71321',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://img.freepik.com/free-vector/medical-infographic-template_23-2148883052.jpg?w=900&t=st=1678636890~exp=1678637490~hmac=9a8d5fbb182f3a6151bec823b8593b230726ea95aeb43e44d506cca344d71321',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://img.freepik.com/free-vector/medical-infographic-template_23-2148883052.jpg?w=900&t=st=1678636890~exp=1678637490~hmac=9a8d5fbb182f3a6151bec823b8593b230726ea95aeb43e44d506cca344d71321',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
