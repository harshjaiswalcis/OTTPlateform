import 'package:ott_demo/screens/movie.dart';
import 'package:ott_demo/screens/screen4.dart';
import 'package:ott_demo/screens/screen5.dart';
import 'package:ott_demo/screens/series.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    appProvider = context.read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: appProvider.currentTab,
        builder: (context, value, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppIcons.ott,
                      height: 70,
                      width: 250,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 0.2.getScreenWidth,
                          child: const TextField(
                            decoration: InputDecoration(
                              // isDense: true,
                              hintText: "Search",
                              contentPadding: EdgeInsets.all(8),
                              suffix: Icon(AppIcons.mic),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.mediumGray,
                            border: Border.all(
                              width: 1.0,
                              color: AppColors.darkGray,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(AppIcons.notification),
                          ),
                        ),
                        const SizedBox(width: 8),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.mediumGray,
                            border: Border.all(
                              width: 1.0,
                              color: AppColors.darkGray,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(AppIcons.person),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(appProvider.tabs.length, (index) {
                            return ListTile(
                              leading:
                                  const Icon(Icons.movie_creation_outlined),
                              title: Text(appProvider.tabs[index]),
                              selected: appProvider.tabs[index] == value,
                              selectedTileColor: Colors.blueGrey,
                              selectedColor: Colors.white,
                              onTap: () {
                                appProvider.currentTab.value =
                                    appProvider.tabs[index];
                              },
                            );
                          })
                        ],
                      )),
                  Expanded(
                    flex: 7,
                    child: value == "movie"
                        ? const Movie()
                        : value == "series"
                            ? const Series()
                            : value == "screen4"
                                ? const Screen4()
                                : value == "screen5"
                                    ? const Screen5()
                                    : value == "home"
                                        ? Container(
                                            color: Colors.orangeAccent,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  value,
                                                ),
                                              ],
                                            ),
                                          )
                                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
