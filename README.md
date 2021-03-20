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

## General info


## Screenshots
![Example screenshot](./img/screenshot.png)

## Technologies
* Buildroot - version ?.?
* Tech 2 - version 2.0
* Tech 3 - version 3.0

## Setup
To run this project, install it locally using npm:

```
$ git clone git://git.buildroot.net/buildroot
$ cd buildroot
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
* Awesome feature 1
* Awesome feature 2
* Awesome feature 3

To-do list:
* Wow improvement to be done 1
* Wow improvement to be done 2

## Status
Project is: _in progress_, _finished_, _no longer continue_ and why?

## Inspiration
Motivated by an employment screening question.

## Contact
Readme template created by [@flynerdpl](https://www.flynerd.pl/)

## Links
* [Buildroot source control](https://stackoverflow.com/questions/21006549/how-to-get-a-buildroot-project-under-source-control)
* [Image format info](https://www.marcusfolkesson.se/blog/fit-vs-legacy-image-format/)
* [Buildroot cheat sheet](https://blog.inf.re/buildroot-cheatsheet.html)
* [Op-tee on RPi using Buildroot](https://blog.crysys.hu/2018/06/op-tee-default-build-and-installation-on-the-raspberry-pi/)
* [RPi on Buildroot](https://blog.crysys.hu/2018/06/using-buildroot-to-create-custom-linux-system-images/)
* [Example FIT image] (https://gist.github.com/Informatic/10f0832d8971c4d874210dc984462e5b)
* [Bootlin Buildroot Training slides] (https://bootlin.com/doc/training/buildroot/buildroot-slides.pdf)
* [Bootling Buildroot Training labs](https://bootlin.com/doc/training/buildroot/buildroot-labs.pdf)
* [Bootling Buildroot STM32MP1](https://bootlin.com/blog/building-a-linux-system-for-the-stm32mp1-basic-system/)
