#!/bin/bash
apt-ftparchive generate -c=aptftp.conf aptgenerate.conf
apt-ftparchive release -c=aptftp.conf dists/stable > dists/stable/Release
gpg -u F1F49AD660EDE6BA11FE7D4E03A35B77822CC141 --clear-sign --yes --output dists/stable/InRelease dists/stable/Release
gpg --default-key  F1F49AD660EDE6BA11FE7D4E03A35B77822CC141 -abs --yes -o dists/stable/Release.gpg dists/stable/Release