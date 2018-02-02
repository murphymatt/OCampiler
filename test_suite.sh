#!/bin/sh

# cat test1.txt
./ocampiler.native hello world > tmp.txt
diff tmp.txt tests/test1.txt

# cat test1len.txt
./ocampiler.native -length hello world > tmp.txt
diff tmp.txt tests/test1len.txt

# cat test2.txt
./ocampiler.native hello world    > tmp.txt
diff tmp.txt tests/test2.txt

# cat test2len.txt
./ocampiler.native -length hello world      > tmp.txt
diff tmp.txt tests/test2len.txt

# cat test3.txt
./ocampiler.native "hello world"    > tmp.txt
diff tmp.txt tests/test3.txt 

# cat testhelp.txt
./ocampiler.native -help > tmp.txt
diff tmp.txt tests/testhelp.txt

# cat testhelp2.txt
./ocampiler.native -help hello world > tmp.txt
diff tmp.txt tests/testhelp.txt

rm tmp.txt
