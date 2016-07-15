
## Getting Started with PRESAGE
### Software Dependencies
* LLVM (version >= 3.2)
* CMake (version >= 3.0) 
* Python (version >= 2.7)

### System Configuration
Below is the system configuration used for testing all versions of PRESAGE.
* CPU : Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
* OS : Ubuntu 15.10 (64-bit)
* Memory : 16GB

### License & Copyright Information
Please refer to the **LICENSE** document located in the top level directory of PRESAGE.

### Installation
##### Step 1: Download VULFI. 

```
git clone https://github.com/utahfmr/PRESAGE.git <presage dir>
```
where \<presage dir\> is the directory where you want vulfi source code to live.

##### Step 3: Create the build directory.

```
mkdir build
cd build
```

##### Step 3: Build & Install PRESAGE.

First, run cake to generate build scripts. If everything works fine then cmake should finish without errors.
```
cmake <presage dir>/
```

Now, running make command should build PRESAGE library with the name LLVMPresage.so.

```
make
```

After building PRESAGE, you could install PRESAGE by running below command. Please note that the default installation directory for PRESAGE is ${CMAKE_INSTALL_PREFIX}/lib. On Linux systems, CMAKE_INSTALL_PREFIX points to /usr/local. 

```
sudo make install
```

To change the default installation directory of PRESAGE, you can use [DESTDIR](https://cmake.org/cmake/help/v3.0/variable/CMAKE_INSTALL_PREFIX.html). An example command-line given below.

```
sudo make install DESTDIR=<my dir>
```

##### Step 4: Run examples.

PRESAGE is tested on PolyBench/C benchmark suite which can be located at <presage dir>/examples/src/polybench. You can look at the "common.mk" files to understand how PRESAGE can be applied on new programs.

##### Important Note: PRESAGE examples use (VULFI)[http://utahfmr.github.io/VULFI/] for fault injection. Therefore, you must configure and install VULFI before running presage examples.
