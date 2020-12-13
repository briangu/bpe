# bpe
code from original byte pair encoding (BPE) [article](http://www.pennelynn.com/Documents/CUJ/HTML/94HTML/19940045.HTM)

```
$ make
$ mkdir test
$ ./bin/compress README.md test/out.dat
$ ./bin/expand test/out.dat test/README.md
$ diff README.md test/README.md
```
