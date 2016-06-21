#!/bin/bash 

set -ex

./pharo Pharo.image eval "
Metacello new 
	baseline: 'Matra';
	repository: 'filetree://.';
	load.

Smalltalk snapshot: true andQuit: true.
"
