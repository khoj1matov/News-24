import 'package:flutter/material.dart';
import 'package:news24/core/components/my_text_style_const.dart';
import 'package:news24/core/constants/color_Const.dart';
import 'package:news24/core/constants/news_apis.dart';
import 'package:news24/models/news_model.dart';
import 'package:news24/services/news_service.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List _future = [
    NewsService.getDate1(),
    NewsService.getDate2(),
    NewsService.getDate3(),
    NewsService.getDate1(),
    NewsService.getDate4(),
    NewsService.getDate5()
  ];
  final List<String> _categories = [
    'Apple',
    'Tesla',
    'Top Bussines',
    'TechCrunch',
    'Wall Street Journal'
  ];
  int _selectedIndex = 0;
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConst.kPrimaryTranparent,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: Icon(
              Icons.notifications_active_outlined,
              size: 30,
              color: ColorConst.kPrimaryBlack,
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/title2.png"),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "News 24",
              style: MyTextStyle.myHomeAppBarTextStyle,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) => Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: _selectedIndex != null && _selectedIndex == __
                          ? ColorConst.kPrimaryBlack
                          : ColorConst.elevatedButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      _categories[__],
                      style: TextStyle(
                        color: _selectedIndex != null && _selectedIndex == __
                            ? ColorConst.kPrimaryWhite
                            : ColorConst.kPrimaryBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      _onSelected(__);
                    },
                  ),
                ),
                itemCount: _categories.length,
              ),
            ),
            FutureBuilder(
              future: _future[_selectedIndex],
              builder: ((context, AsyncSnapshot<NewsModel> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Error"),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.77,
                      child: ListView.builder(
                        itemBuilder: (_, __) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 140,
                                    width: 140,
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: snapshot.data!.articles![__]
                                                  .urlToImage ==
                                              null
                                          ? NetworkImage(snapshot.data!
                                              .articles![__ + 10].urlToImage
                                              .toString())
                                          : NetworkImage(snapshot
                                              .data!.articles![__].urlToImage!),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.165,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.54,
                                            height: 50,
                                            child: Text(
                                                snapshot.data!.articles![__]
                                                        .content ??
                                                    "No Data",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: MyTextStyle
                                                    .settingsTextStyle),
                                          ),
                                          Text(
                                            snapshot.data!.articles![__].author
                                                .toString(),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: MyTextStyle.nameTextStyle,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width * 0.4,
                                            child: Text(snapshot
                                                .data!.articles![__].publishedAt
                                                .toString(),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1, style: MyTextStyle.settingsTextStyle,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: const Divider(
                                thickness: 0.5,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
