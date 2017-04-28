cat svn_log | egrep -o 'https://bugs.webkit.org/show_bug.cgi?id=[1-9]+' | sort -u > bug_ids
