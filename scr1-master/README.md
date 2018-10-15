SCR1 is an open-source RISC-V compatible MCU core, designed by Syntacore.

## Key features
* RV32I|E[MC] ISA
* Machine privilege mode
* 2 to 4 stage pipeline
* 32-bit AXI4/AHB-Lite external interface
* Integrated IRQ controller and advanced debug
* Optimized for area and power
* Written in SystemVerilog
* Features a number of configurable parameters

For more information, see *docs/scr1_eas.pdf*.

## Repository contents
Folder | Description
------ | -----------
docs                             | SCR1 documentation
src                              | SCR1 RTL source and testbench files
sim                              | Tests and scripts for simulation
sim/tests/common                 | Common source files for tests
sim/tests/riscv_isa              | Common source files for RISC-V ISA tests
sim/tests/riscv_compliance       | Common source files for RISC-V Compliance tests
sim/tests/benchmarks/dhrystone21 | Dhrystone 2.1 source files
sim/tests/benchmarks/coremark    | Coremark platform specific source files
sim/tests/vectored_isr_sample    | Simple test example for vectored interrupt mode
sim/verilator_wrap               | Wrappers for Verilator simulation

## Quick start guide

### Prerequisites

RISC-V GCC toolchain is required to compile the software. You can use pre-built binaries or build the toolchain from scratch.

#### Using pre-built binary tools

Pre-built RISC-V GCC toolchain and OpenOCD binaries are available to download from http://syntacore.com/page/products/sw-tools. Download the archive (*.tar.gz* for Linux, *.zip* for Windows) for your platform, extract the archive to your preferred directory <GCC_INSTALL_PATH> and update the PATH environment variable as described in **Set environment variables** section.

#### Building tools from source

You can build the RISC-V toolchain from sources.

Build procedure is verified at the Ubuntu 14.04 LTS and Ubuntu 16.04 LTS distributions.

    sudo apt-get install autoconf automake libmpc-dev libmpfr-dev libgmp-dev gawk bison flex texinfo libtool make g++ pkg-config libexpat1-dev zlib1g-dev
    git clone https://github.com/riscv/riscv-gnu-toolchain.git
    cd riscv-gnu-toolchain
    git checkout a71fc539850f8dacf232fc580743b946c376014b
    git submodule update --init --recursive
    ./configure --prefix=<GCC_INSTALL_PATH> --enable-multilib
    make

More detailed instructions on how to prepare and build the toolchain can be found in https://github.com/riscv/riscv-tools/blob/master/README.md.

#### Set environment variables

Add the <GCC_INSTALL_PATH>/bin folder to the PATH environment variable:

    export PATH=$PATH:<GCC_INSTALL_PATH>/bin

### Clone and prepare the RISC-V ISA tests

Clone RISC-V ISA tests to your preferred directory <RISCV_TESTS_PATH>

    git clone https://github.com/riscv/riscv-tests
    cd riscv-tests
    git checkout a9433c4daa287fbe101025f2a079261a10149225

Set the $RISCV_TESTS environment variable accordingly:

    export RISCV_TESTS=<RISCV_TESTS_PATH>

### Clone RISC-V Compliance tests to your preferred directory <RISCV_COMPLIANCE_TESTS_PATH>

Clone RISC-V Compliance tests to your preferred directory <RISCV_COMPLIANCE_TESTS_PATH>

    git clone https://github.com/riscv/riscv-compliance
    cd riscv-compliance
    git checkout 9273836251cc53069f9cc48543fa9c1417e98cb7

Set the $RISCV_COMPLIANCE_TESTS environment variable accordingly:

    export RISCV_COMPLIANCE_TESTS=<RISCV_COMPLIANCE_TESTS_PATH>


### Prepare Coremark benchmark sources

    Download CoreMark from EEMBC's web site and extract the archive from
    http://www.eembc.org/coremark/download.php, or clone from https://github.com/eembc/coremark

    Copy the following files from into the `tests/benchmarks/coremark/src` directory in this repository:
    - `core_main.c`
    - `core_list_join.c`
    - `coremark.h`
    - `core_matrix.c`
    - `core_state.c`
    - `core_util.c`

### Build RTL, compile and run tests
`make run_<SIMULATOR> BUS=<AHB, AXI> ARCH=<I, IM, IMC, IC, EM, EMC, EC> IPIC=<0, 1>` will build RTL and tests, then run all tests with default parameters.

Currently supported options:
* run_modelsim
* run_vcs
* run_ncsim
* run_verilator

Please note that RTL simulator executables should be in your PATH variable.

To run an arbitrary subset of tests, edit the *tests* target in the top Makefile, or the *rv32_tests.inc* in riscv_isa subfolder.
After all the tests have finished, the results can be found in *build/test_results.txt* (default location).

* Test build and run parameters can be configured in the *Makefile*
* SCR1 core parameters can be configured in *src/includes/scr1_arch_description.svh*

Please make sure that architectural config selected for the SCR1 RTL matches the one used for tests compilation.

## Contacts
<scr1@syntacore.com>
