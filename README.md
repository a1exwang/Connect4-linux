# AI Project for Linux

## Install Requirements

- requirements:
  - pthread
  - libdl
  - mono >= 4.0
  - g++
  - make

- How to install?
```
    sudo apt-get install build-essential g++ mono-complete monodevelop
```

## Build

1. Strategy
  
```
    cd Strategy
    make
```

2. Compete
    
```
    cd Compete
    make
```

3. UI

```
    cd UI
    monodevelop UI.csproj
    # Press F7 to build
```

## Run

1. Compete

```
    # NOTE: .so files must be refered to as ./libstra.so(not libstra.so)
    ./compete ./libstra.so ./libstra.so.1 OUTPUT_FILE ROUNDS
```

2. UI

```
    cd UI/bin/Debug
    cli UI.exe
```

3. How to debug my strategy

```
    # This will automatically set a break point on `getPoint` functions of both sides. 
    gdb /usr/bin/cli -x=gdb-cmd
    # You can use gdb-server and connnect an IDE(e.g. Eclipse) to it.
```

## How to build test cases

```
    cp -r *{1,3,5,7,9} TestCases/
    cd TestCases
    ./compileall.sh
    ls
    # => 1.so 3.so 5.so...

    # example1, example2 are examples of the file tree structure
```

## Status

- Tested on Ubuntu 16.04 64bit
- gdb source-level debug enabled
- no testcases
