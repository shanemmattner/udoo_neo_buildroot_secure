# Udoo Neo Buildroot Secure
> A project to create a secure FIT image for the Udoo Neo using Buildroot

## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [Links](#links)

## General info
Buildroot set-up to generate a secure FIT image for the Udoo Neo.  

## Screenshots
![Example screenshot](./img/screenshot.png)

## Technologies
* Buildroot - version ?.?
* Tech 2 - version 2.0
* Tech 3 - version 3.0

## Project Setup
To run this project, install it locally using apt:
```
$ git clone git://git.buildroot.net/buildroot

```

## Buildroot Configuration
Here are the steps I did to set-up this project.

First, we add buildroot as a submodule.
```
$ git submodule add git://git.buildroot.net/buildroot
```
Now we must make the recommended directory structure for the br2-external tree.  This will allow us to version control our Buildroot configuration.  In order for Git to register the folders we must create a file within them, this is the reason for 'touch ".../file"'.
```
$ mkdir br-external
$ mkdir -p "board/company/boardname/rootfs_overlay/etc" && touch "board/company/boardname/rootfs_overlay/etc/file"
$ mkdir -p "board/company/boardname/patches" && touch "board/company/boardname/patches/file"
$ mkdir -p "configs" && touch "configs/file"
$ mkdir -p "package/company" && touch "package/company/file"
```

```
$ make mx6sx_udoo_neo_defconfig
$ make menuconfig
```
* Toolchain >> Toolchain Type >> External toolchain
* Toolchain >> Toolchain Type >> Copy gdb server to the Target >> 'y'
* Target packages >> Security >> optee-client >> 'y'
* Host utilities >> Flattened Image Tree (FIT) support >> 'y'

```
$ make
$ sudo dd if=output/images/sdcard.img of=/dev/mmcblk0 bs=1M conv=fdatasync status=progress
```

## Code Examples
Show examples of usage:
`put-your-code-here`

## Features
List of features ready and TODOs for future development
* Verified boot
* OP-TEE Secure
* Awesome feature 3

To-do list:
* Wow improvement to be done 1
* Wow improvement to be done 2

## Status
_in progress_

## Inspiration
Motivated by an employment screening question.

## Contact
Readme template created by [@flynerdpl](https://www.flynerd.pl/)

## Links
##### Source Control
* [Buildroot source control](https://stackoverflow.com/questions/21006549/how-to-get-a-buildroot-project-under-source-control)
* [Buildroot manual - Keep customizations outside of Buildroot](https://buildroot.org/downloads/manual/manual.html#outside-br-custom)
* [Buildroot manual - Recommended directory structure](https://buildroot.org/downloads/manual/manual.html#customize-dir-structure)
##### Verified Boot
* [VerifiedBoot using Buildroot for nitrogen6sx](https://github.com/pratapms/VerifiedBoot)
* [Verified Boot – Introduction to U-Boot’s Secure Boot](https://web.archive.org/web/20190104025413/https://www.pacificsimplicity.ca/blog/verified-boot-%E2%80%93-introduction-u-boot%E2%80%99s-secure-boot)
* [U-Boot_verified_RSA_boot_flow_on_arm_target](https://www.denx.de/wiki/pub/U-Boot/MiniSummitELCE2013/U-Boot_verified_RSA_boot_flow_on_arm_target.pdf)
* [Verified U-Boot](https://lwn.net/Articles/571031/)
##### OP-TEE Trusted Execution Environment
* [Op-tee on RPi using Buildroot](https://blog.crysys.hu/2018/06/op-tee-default-build-and-installation-on-the-raspberry-pi/)
* [About OP-TEE](https://optee.readthedocs.io/en/latest/general/about.html)
##### Buildroot
* [Buildroot on i.MX6 UDOO NEO Hardware](https://www.youtube.com/watch?v=wGXgeQ5KK7A&t=761s)
* [RPi on Buildroot](https://blog.crysys.hu/2018/06/using-buildroot-to-create-custom-linux-system-images/)
* [Bootlin Buildroot Training slides](https://bootlin.com/doc/training/buildroot/buildroot-slides.pdf)
* [Bootling Buildroot Training labs](https://bootlin.com/doc/training/buildroot/buildroot-labs.pdf)
* [Bootling Buildroot STM32MP1](https://bootlin.com/blog/building-a-linux-system-for-the-stm32mp1-basic-system/)
* [My 6 tips for working with Buildroot](https://www.viatech.com/en/2015/06/buildroot/)
* [Buildroot cheat sheet](https://blog.inf.re/buildroot-cheatsheet.html)
##### FIT format
* [Example FIT image](https://gist.github.com/Informatic/10f0832d8971c4d874210dc984462e5b)
* [Image format info](https://www.marcusfolkesson.se/blog/fit-vs-legacy-image-format/)
