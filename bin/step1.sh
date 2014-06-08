#!/usr/bin/env bash -x

###
 # wget voodoo explained...
 #
 # --mirror --convert-links
 # ## get all pages, convert to relative links
 #
 # --reject-regex '. . .'
 # ## ignore these pages...
 #
 # --page-requisites
 # ## get linked images and styles
 #
 # --no-host-directories --directory-prefix=raw --cut-dirs=1
 # ## put everything into the "raw" directory, trim "cgi-bin"
 #
 # http://codingdojo.org/cgi-bin/index.pl
 # ## ignore the <frameset> wrapper page
 #
 # $@
 # ## anything supplied on the command line to this script
 # ## feel free to add `--quiet --background` to your own invocation.
 ##
wget --mirror --convert-links \
    --reject '*diff=*,*back=*,*RecentChanges' \
    --reject-regex 'action=(history|edit|rc)' --regex-type=pcre \
    --page-requisites \
    --no-host-directories --directory-prefix=raw --cut-dirs=1 \
    $@ \
    http://codingdojo.org/cgi-bin/index.pl
