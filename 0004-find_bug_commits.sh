cat critical_bug_ids | sed 's/\?/\\?/g' | parallel --eta -j20 'f=$(echo {} | sed "s/https:\/\/bugs.webkit.org\/show_bug.cgi\\\?id\=//g"); zcat svn_log.gz | $(python  grep-svn-log.py {} > bugs/$f)'
