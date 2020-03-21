document.write('<link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-31007ea0d3bd9f80540adfbc55afc7bd.css">')
document.write('<div id=\"gist95165592\" class=\"gist\">\n    <div class=\"gist-file\">\n      <div class=\"gist-data\">\n        <div class=\"js-gist-file-update-container js-task-list-container file-box\">\n  <div id=\"file-base_api-dart\" class=\"file\">\n    \n\n  <div itemprop=\"text\" class=\"Box-body p-0 blob-wrapper data type-dart \">\n      \n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\" data-paste-markdown-skip>\n      <tr>\n        <td id=\"file-base_api-dart-L1\" class=\"blob-num js-line-number\" data-line-number=\"1\"><\/td>\n        <td id=\"file-base_api-dart-LC1\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-k\">class<\/span> <span class=\"pl-c1\">BaseApi<\/span> {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L2\" class=\"blob-num js-line-number\" data-line-number=\"2\"><\/td>\n        <td id=\"file-base_api-dart-LC2\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-k\">static<\/span> <span class=\"pl-k\">const<\/span> <span class=\"pl-k\">int<\/span> <span class=\"pl-c1\">TIMEOUT_SECONDS<\/span> <span class=\"pl-k\">=<\/span> <span class=\"pl-c1\">5<\/span>;<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L3\" class=\"blob-num js-line-number\" data-line-number=\"3\"><\/td>\n        <td id=\"file-base_api-dart-LC3\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-k\">final<\/span> <span class=\"pl-c1\">String<\/span> baseUrl <span class=\"pl-k\">=<\/span> <span class=\"pl-c1\">FlavorConfig<\/span>.instance.values.baseUrl;<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L4\" class=\"blob-num js-line-number\" data-line-number=\"4\"><\/td>\n        <td id=\"file-base_api-dart-LC4\" class=\"blob-code blob-code-inner js-file-line\">  <\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L5\" class=\"blob-num js-line-number\" data-line-number=\"5\"><\/td>\n        <td id=\"file-base_api-dart-LC5\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-c1\">Future<\/span><span class=\"pl-k\">&lt;<\/span><span class=\"pl-k\">dynamic<\/span><span class=\"pl-k\">&gt;<\/span> <span class=\"pl-en\">get<\/span>(<span class=\"pl-c1\">String<\/span> url) <span class=\"pl-k\">async<\/span> {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L6\" class=\"blob-num js-line-number\" data-line-number=\"6\"><\/td>\n        <td id=\"file-base_api-dart-LC6\" class=\"blob-code blob-code-inner js-file-line\">    <span class=\"pl-k\">final<\/span> response <span class=\"pl-k\">=<\/span> <span class=\"pl-k\">await<\/span> http.<span class=\"pl-en\">get<\/span>(url)<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L7\" class=\"blob-num js-line-number\" data-line-number=\"7\"><\/td>\n        <td id=\"file-base_api-dart-LC7\" class=\"blob-code blob-code-inner js-file-line\">        .<span class=\"pl-en\">timeout<\/span>(<span class=\"pl-k\">const<\/span> <span class=\"pl-c1\">Duration<\/span>(seconds<span class=\"pl-k\">:<\/span> <span class=\"pl-c1\">TIMEOUT_SECONDS<\/span>), onTimeout<span class=\"pl-k\">:<\/span> _onTimeout);<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L8\" class=\"blob-num js-line-number\" data-line-number=\"8\"><\/td>\n        <td id=\"file-base_api-dart-LC8\" class=\"blob-code blob-code-inner js-file-line\">    <span class=\"pl-k\">final<\/span> responseJson <span class=\"pl-k\">=<\/span> json.<span class=\"pl-en\">decode<\/span>(response.body);<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L9\" class=\"blob-num js-line-number\" data-line-number=\"9\"><\/td>\n        <td id=\"file-base_api-dart-LC9\" class=\"blob-code blob-code-inner js-file-line\">    <span class=\"pl-k\">return<\/span> responseJson;<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L10\" class=\"blob-num js-line-number\" data-line-number=\"10\"><\/td>\n        <td id=\"file-base_api-dart-LC10\" class=\"blob-code blob-code-inner js-file-line\">  }<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L11\" class=\"blob-num js-line-number\" data-line-number=\"11\"><\/td>\n        <td id=\"file-base_api-dart-LC11\" class=\"blob-code blob-code-inner js-file-line\">  <\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L12\" class=\"blob-num js-line-number\" data-line-number=\"12\"><\/td>\n        <td id=\"file-base_api-dart-LC12\" class=\"blob-code blob-code-inner js-file-line\">  <span class=\"pl-c1\">Future<\/span><span class=\"pl-k\">&lt;<\/span>http.<span class=\"pl-c1\">Response<\/span><span class=\"pl-k\">&gt;<\/span> <span class=\"pl-en\">_onTimeout<\/span>() {<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L13\" class=\"blob-num js-line-number\" data-line-number=\"13\"><\/td>\n        <td id=\"file-base_api-dart-LC13\" class=\"blob-code blob-code-inner js-file-line\">    <span class=\"pl-k\">throw<\/span> <span class=\"pl-k\">new<\/span> <span class=\"pl-c1\">SocketException<\/span>(<span class=\"pl-s\">&quot;Timeout during request&quot;<\/span>);<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L14\" class=\"blob-num js-line-number\" data-line-number=\"14\"><\/td>\n        <td id=\"file-base_api-dart-LC14\" class=\"blob-code blob-code-inner js-file-line\">  }<\/td>\n      <\/tr>\n      <tr>\n        <td id=\"file-base_api-dart-L15\" class=\"blob-num js-line-number\" data-line-number=\"15\"><\/td>\n        <td id=\"file-base_api-dart-LC15\" class=\"blob-code blob-code-inner js-file-line\">}<\/td>\n      <\/tr>\n<\/table>\n\n\n  <\/div>\n\n  <\/div>\n<\/div>\n\n      <\/div>\n      <div class=\"gist-meta\">\n        <a href=\"https://gist.github.com/JHBitencourt/1250cfed00deb94a109b7ee397bed1b8/raw/edec43bb8b9e71cc24584eab39364f3900ad0a65/base_api.dart\" style=\"float:right\">view raw<\/a>\n        <a href=\"https://gist.github.com/JHBitencourt/1250cfed00deb94a109b7ee397bed1b8#file-base_api-dart\">base_api.dart<\/a>\n        hosted with &#10084; by <a href=\"https://github.com\">GitHub<\/a>\n      <\/div>\n    <\/div>\n<\/div>\n')
