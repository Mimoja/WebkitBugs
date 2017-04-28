cat bug_ids | parallel --eta -j20 'curl -s {} | grep -q "You are not authorized" && echo {} >> webkit_bugs' > critical_bug_ids

