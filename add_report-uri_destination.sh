#!/bin/bash
#
# This script is a simple method to inject report-uri https://blah/csp/reporting/destination to the CSP header defined in .htaccess
#
# NOTE: Make sure you pass this script the a valid URL
# NOTE: Hard reset the git repo if you want to revert all of the .htaccess files back to defaults so you can run this script again
#

if [ "${1}x" != "x" ] ; then
  for i in `find . -name .htaccess` ; do
    echo "Adding report-uri to CSP header in ${i}"
    sed -E -i.original "s#^(Header set Content-Security-Policy.*;) *\"\$#\1 report-uri ${1}\"#" ${i}
  done
fi

# EOF
