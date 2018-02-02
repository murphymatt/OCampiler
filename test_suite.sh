#!/bin/sh

# cat test1.txt
./ocampiler.native hello world > tmp.txt
diff tmp.txt test1.txt

# cat test1len.txt
./ocampiler.native -length hello world > tmp.txt
diff tmp.txt test1len.txt

# cat test2.txt
./ocampiler.native hello world    > tmp.txt
diff tmp.txt test2.txt

# cat test2len.txt
./ocampiler.native -length hello world      > tmp.txt
diff tmp.txt test2len.txt

# cat test3.txt
./ocampiler.native "hello world"    > tmp.txt
diff tmp.txt test3.txt 

# cat testhelp.txt
./ocampiler.native -help > tmp.txt
diff tmp.txt testhelp.txt

# cat testhelp2.txt
./ocampiler.native -help hello world > tmp.txt
diff tmp.txt testhelp.txt

rm tmp.txt
