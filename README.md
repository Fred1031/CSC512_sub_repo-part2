# CSC512_dev_repo
This is the development repository for NCSU CSC 512 course project.

This repo deals with Seminal Input Feature Detection.

## Running Steps

### Enter the Work Space and Build the Project
```shell
mkdir build
cd build
cmake ..
make
```

### Use the Framework to Detect Seminal Input Features
```shell
clang-17 -fpass-plugin=skeleton/SkeletonPass.so -g -c -fno-discard-value-names ../example2.c
```

We have included the results of 2 synthetic small testing code `example2.c` and `example3.c`, and 1 real world testing code `example4.c`.

## Interpretation of the Results

For synthetic codes, our solution successfully outputs the input that is responsible for the `for` loop in Code `example2.c` and the size of the file for  `example3.c`.

```shell
// example2.c
Line 8 : n

// example3.c
Line 8: size of file fp
```

For the real-world test code, we managed to tackle the
more complicated situations with different hard-coded input
feature detection. The framework is able to locate the critical
points in the program. Specifically, there are 142 critical
points detected. And among these critical points, many of
them are associated with seminal input features. For example,
the characters in the fp file are processed in the program
so that the framework detects its size is the seminal input
feature in Line 717. On the other side, the program only
appends additional texts to the file resultado so that our
solution detects that it is only the existence of the file that
matters.

```shell
Line 306 : n
...
Line 543: existence of file resultado
br_107: ../example4.c, 544, 550
br_108: ../example4.c, 544, 545
...
Line 717: size of file fp
br_139: ../example4.c, 724, 724
br_140: ../example4.c, 724, 725
Line 710 : n
```