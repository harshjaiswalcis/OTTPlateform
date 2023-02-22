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
          return Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(appProvider.tabs.length, (index) {
                        return ListTile(
                          leading: const Icon(Icons.movie_creation_outlined),
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
          );
        },
      ),
    );
  }
}
