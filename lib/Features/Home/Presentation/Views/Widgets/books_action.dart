import 'package:bookly_app/Core/Utils/Functions/launch_url.dart';
import 'package:bookly_app/Features/Home/Data/Repositories/Models/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget
{
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            fontSize: 20,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            str: 'Free',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
           Expanded(
              child: CustomButton(
                onPressed: () async
                {
                  launchCustomUrl(context, bookModel.volumeInfo.previewLink.toString());
                },
            fontSize: 15,
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            str: getText(bookModel),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ))
        ],
      ),
    );
  }

  String getText(BookModel bookModel)
  {
    if(bookModel.volumeInfo.previewLink == null)
    {
      return 'Not Available';
    }

    else
    {
      return 'Preview';
    }
  }
}
