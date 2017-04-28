cat ../cve_bugs | sed 's/\?/\\?/g' | parallel --eta -j20 'f=$(echo {} | sed "s/https:\/\/bugs.webkit.org\/show_bug.cgi\\\?id\=//g"); cat svn_log | $(python  grep-svn-log.py {} > bugs/$f)'
