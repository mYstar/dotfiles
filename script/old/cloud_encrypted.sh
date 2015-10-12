#!/bin/sh

mount ~/cloud
keepassx &
encfs -o nonempty /home/est/cloud/encrypted /home/est/encrypted
