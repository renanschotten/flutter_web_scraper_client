import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/di.dart';
import 'package:web_scraper/presentation/bloc/web_scraper_bloc.dart';

class WebScraperPage extends StatefulWidget {
  const WebScraperPage({super.key});

  @override
  State<WebScraperPage> createState() => _WebScraperPageState();
}

class _WebScraperPageState extends State<WebScraperPage> {
  final WebScraperBloc bloc = getIt<WebScraperBloc>();
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode fn = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebScraper APP'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                focusNode: fn,
                decoration: const InputDecoration(
                  label: Text('Inserir termo a pesquisar'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  fn.unfocus();
                  bloc.add(FetchDataEvent(
                    searchContent: textEditingController.text,
                  ));
                },
                child: const Text('Pesquisar'),
              ),
              BlocBuilder<WebScraperBloc, WebScraperState>(
                bloc: bloc,
                builder: (context, state) {
                  if (state is WebScraperLoading) {
                    return const CircularProgressIndicator();
                  }
                  if (state is WebScraperFailure) {
                    return const Text('Erro ao buscar os dados');
                  }
                  if (state is WebScraperSuccess) {
                    return Column(
                      children: [
                        ...state.response.map(
                          (e) => ListTile(
                            title: Text(e.title),
                            subtitle: GestureDetector(
                              child: Text(
                                e.url,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () async {
                                launchUrl(Uri.parse(e.url));
                              },
                            ),
                          ),
                        )
                      ],
                    );
                  }
                  return const SizedBox();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
