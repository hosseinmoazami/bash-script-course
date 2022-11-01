#!/bin/bash
for i in {0..9}; do
	echo -n $i
done
echo

for i in {0..9..2}; do
	echo -n $i
done
echo

for alphabet in {a..z}; do
	echo -n $alphabet
done
echo

for alphabet in {A..Z}; do
	echo -n $alphabet
done
echo

for alphabet in {A..Z..2}; do
	echo -n $alphabet
done
echo

for alphabet in {B..Z..2}; do
	echo -n $alphabet
done
echo
