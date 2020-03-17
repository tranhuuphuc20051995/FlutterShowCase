document.write('<link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-31007ea0d3bd9f80540adfbc55afc7bd.css">')
document.write('<div id=\"gist95165643\" class=\"gist\">\n    <div class=\"gist-file\">\n      <div class=\"gist-data\">\n        <div class=\"js-gist-file-update-container js-task-list-container file-box\">\n  <div id=\"file-app-dart\" class=\"file\">\n    \n\n  <div itemprop=\"text\" class=\"Box-body p-0 blob-wrapper data type-dart \">\n      \n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\" data-paste-markdown-skip>\n      <tr>\n        <td id=\"file-app-dart-L1\" class=\"blob-num js-line-number\" data-line-number=\"1\"><\/td>\n        <td id=\"file-app-dart-LC1\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-k\">class<\/span> <span class=\"pl-c1\">MyApp<\/span> <span class=\"pl-k\">extends<\/span> <span class=\"pl-c1\">StatelessWidget<\/span> {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L2\" class=\"blob-num js-line-number\" data-line-number=\"2\"><\/td>\n        <td id=\"file-app-dart-LC2\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-k\">@override<\/span><\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L3\" class=\"blob-num js-line-number\" data-line-number=\"3\"><\/td>\n        <td id=\"file-app-dart-LC3\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-c1\">Widget<\/span> <span class=\"pl-en\">build<\/span>(<span class=\"pl-c1\">BuildContext<\/span> context) {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L4\" class=\"blob-num js-line-number\" data-line-number=\"4\"><\/td>\n        <td id=\"file-app-dart-LC4\" class=\"blob-code blob-code-inner js-file-line\">    <span class=\"pl-k\">return<\/span> <span class=\"pl-c1\">BlocProvider<\/span><span class=\"pl-k\">&lt;<\/span><span class=\"pl-c1\">HomeBloc<\/span><span class=\"pl-k\">&gt;<\/span>(<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L5\" class=\"blob-num js-line-number\" data-line-number=\"5\"><\/td>\n        <td id=\"file-app-dart-LC5\" class=\"blob-code blob-code-inner js-file-line\">      bloc<span class=\"pl-k\">:<\/span> <span class=\"pl-c1\">HomeBloc<\/span>(),<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L6\" class=\"blob-num js-line-number\" data-line-number=\"6\"><\/td>\n        <td id=\"file-app-dart-LC6\" class=\"blob-code blob-code-inner js-file-line\">      child<span class=\"pl-k\">:<\/span> <span class=\"pl-c1\">MaterialApp<\/span>(<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L7\" class=\"blob-num js-line-number\" data-line-number=\"7\"><\/td>\n        <td id=\"file-app-dart-LC7\" class=\"blob-code blob-code-inner js-file-line\">        title<span class=\"pl-k\">:<\/span> <span class=\"pl-s\">&#39;Ready to Go&#39;<\/span>,<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L8\" class=\"blob-num js-line-number\" data-line-number=\"8\"><\/td>\n        <td id=\"file-app-dart-LC8\" class=\"blob-code blob-code-inner js-file-line\">        onGenerateRoute<span class=\"pl-k\">:<\/span> _routes,<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L9\" class=\"blob-num js-line-number\" data-line-number=\"9\"><\/td>\n        <td id=\"file-app-dart-LC9\" class=\"blob-code blob-code-inner js-file-line\">      ),<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L10\" class=\"blob-num js-line-number\" data-line-number=\"10\"><\/td>\n        <td id=\"file-app-dart-LC10\" class=\"blob-code blob-code-inner js-file-line\">    );<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L11\" class=\"blob-num js-line-number\" data-line-number=\"11\"><\/td>\n        <td id=\"file-app-dart-LC11\" class=\"blob-code blob-code-inner js-file-line\">  }<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L12\" class=\"blob-num js-line-number\" data-line-number=\"12\"><\/td>\n        <td id=\"file-app-dart-LC12\" class=\"blob-code blob-code-inner js-file-line\">  <\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L13\" class=\"blob-num js-line-number\" data-line-number=\"13\"><\/td>\n        <td id=\"file-app-dart-LC13\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-c1\">Route<\/span> <span class=\"pl-en\">_routes<\/span>(<span class=\"pl-c1\">RouteSettings<\/span> settings) {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L14\" class=\"blob-num js-line-number\" data-line-number=\"14\"><\/td>\n        <td id=\"file-app-dart-LC14\" class=\"blob-code blob-code-inner js-file-line\">    <span class=\"pl-k\">if<\/span> (settings.isInitialRoute)<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L15\" class=\"blob-num js-line-number\" data-line-number=\"15\"><\/td>\n        <td id=\"file-app-dart-LC15\" class=\"blob-code blob-code-inner js-file-line\">      <span class=\"pl-k\">return<\/span> <span class=\"pl-c1\">MaterialPageRoute<\/span>(<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L16\" class=\"blob-num js-line-number\" data-line-number=\"16\"><\/td>\n        <td id=\"file-app-dart-LC16\" class=\"blob-code blob-code-inner js-file-line\">          builder<span class=\"pl-k\">:<\/span> (context) {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L17\" class=\"blob-num js-line-number\" data-line-number=\"17\"><\/td>\n        <td id=\"file-app-dart-LC17\" class=\"blob-code blob-code-inner js-file-line\">            <span class=\"pl-k\">var<\/span> homePage <span class=\"pl-k\">=<\/span> <span class=\"pl-c1\">HomePage<\/span>();<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L18\" class=\"blob-num js-line-number\" data-line-number=\"18\"><\/td>\n        <td id=\"file-app-dart-LC18\" class=\"blob-code blob-code-inner js-file-line\">            <span class=\"pl-k\">final<\/span> homebloc <span class=\"pl-k\">=<\/span> <span class=\"pl-c1\">BlocProvider<\/span>.<span class=\"pl-en\">of<\/span>&lt;<span class=\"pl-c1\">HomeBloc<\/span><span class=\"pl-k\">&gt;<\/span>(context);<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L19\" class=\"blob-num js-line-number\" data-line-number=\"19\"><\/td>\n        <td id=\"file-app-dart-LC19\" class=\"blob-code blob-code-inner js-file-line\">            homebloc.<span class=\"pl-en\">fetchData<\/span>();<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L20\" class=\"blob-num js-line-number\" data-line-number=\"20\"><\/td>\n        <td id=\"file-app-dart-LC20\" class=\"blob-code blob-code-inner js-file-line\">            <span class=\"pl-k\">return<\/span> <span class=\"pl-c1\">FlavorBanner<\/span>(<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L21\" class=\"blob-num js-line-number\" data-line-number=\"21\"><\/td>\n        <td id=\"file-app-dart-LC21\" class=\"blob-code blob-code-inner js-file-line\">              child<span class=\"pl-k\">:<\/span> homePage,<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L22\" class=\"blob-num js-line-number\" data-line-number=\"22\"><\/td>\n        <td id=\"file-app-dart-LC22\" class=\"blob-code blob-code-inner js-file-line\">            );<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L23\" class=\"blob-num js-line-number\" data-line-number=\"23\"><\/td>\n        <td id=\"file-app-dart-LC23\" class=\"blob-code blob-code-inner js-file-line\">          }<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L24\" class=\"blob-num js-line-number\" data-line-number=\"24\"><\/td>\n        <td id=\"file-app-dart-LC24\" class=\"blob-code blob-code-inner js-file-line\">      );<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L25\" class=\"blob-num js-line-number\" data-line-number=\"25\"><\/td>\n        <td id=\"file-app-dart-LC25\" class=\"blob-code blob-code-inner js-file-line\">  }<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-app-dart-L26\" class=\"blob-num js-line-number\" data-line-number=\"26\"><\/td>\n        <td id=\"file-app-dart-LC26\" class=\"blob-code blob-code-inner js-file-line\">}<\/td>\n      <\/tr>\n<\/table>\n\n\n  <\/div>\n\n  <\/div>\n<\/div>\n\n      <\/div>\n      <div class=\"gist-meta\">\n        <a href=\"https://gist.github.com/JHBitencourt/0dbadffc548309067ca05e04a6b704ad/raw/a80025316a93852234182a89b13e95dc9b3f7085/app.dart\" style=\"float:right\">view raw<\/a>\n        <a href=\"https://gist.github.com/JHBitencourt/0dbadffc548309067ca05e04a6b704ad#file-app-dart\">app.dart<\/a>\n        hosted with &#10084; by <a href=\"https://github.com\">GitHub<\/a>\n      <\/div>\n    <\/div>\n<\/div>\n')
