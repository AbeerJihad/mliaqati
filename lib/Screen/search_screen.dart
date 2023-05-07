import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../mixin.dart';
import '../ApplicationComponents/them.dart';
import '../Widgets/text_widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

int indexCategories = -1;
int searchIndex = 0;
late TextEditingController _textEditingController;

class _SearchScreenState extends State<SearchScreen> with Helper {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    indexCategories = -1;
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TextWidget(
            fontWeight: FontWeight.normal,
            color: Colors.black,
            font: Them().font,
            text: AppLocalizations.of(context)!.search,
            size: 18),
        actions: [],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        primary: true,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            hintText:
                                AppLocalizations.of(context)!.searchProduct,
                            hintStyle: const TextStyle(color: Colors.black38),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            disabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(3, 6))
                            ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 45,
                      decoration: BoxDecoration(
                          color: Them().baseColor,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 3),
                                blurRadius: 6)
                          ]),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              searchIndex = 0;
                            });
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      TextButton(
                        //style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Them().baseColor)),
                        onPressed: () {
                          setState(() {
                            indexCategories = -1;
                          });
                        },
                        child: TextWidget(
                            fontWeight: FontWeight.bold,
                            color: indexCategories == -1
                                ? Them().baseColor
                                : Colors.black54,
                            font: Them().font,
                            text: 'الكل',
                            size: 16),
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return TextButton(
                              onPressed: () {
                                setState(() {
                                  indexCategories = index;
                                });
                              },
                              child: TextWidget(
                                  fontWeight: FontWeight.normal,
                                  color: index == indexCategories
                                      ? Them().baseColor
                                      : Colors.black54,
                                  font: Them().font,
                                  text: 'أنظمة غذائية',
                                  size: 13),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: ListView.builder(
                itemCount: 11,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Them().baseBorder),
                          border: Border.all(color: Colors.black12)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 72,
                            width: 87,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Them().baseBorder),
                            ),
                            child: Image.network(
                              'https://cdn4.premiumread.com/?url=https://www.alroeya.com/uploads/images/2020/03/15/763921.jpg&w=w850&q=100&f=jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    font: Them().font,
                                    text: 'حمية مايو كلينك',
                                    size: 14),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextWidget(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black45,
                                          font: Them().font,
                                          text:
                                              'يشجع على تناول الفواكه والخضراوات والحبوب الكاملة والدهون الصحية',
                                          size: 9),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.date_range,
                                      color: Them().baseColor,
                                      size: 17,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    TextWidget(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black45,
                                        font: Them().font,
                                        text: '23/4/2022',
                                        size: 9),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 3),
                            decoration: BoxDecoration(
                                color: Colors.green.withAlpha(40),
                                borderRadius:
                                    BorderRadius.circular(Them().baseBorder)),
                            child: TextWidget(
                                fontWeight: FontWeight.normal,
                                color: Colors.green,
                                font: Them().font,
                                text: '99\$',
                                size: 10),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
