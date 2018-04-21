#!/bin/bash

echo 'import tldr;tldr.output(tldr.get_page("'$1'"))' | python 2> /dev/null
