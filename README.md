# Udoo Neo Buildroot Secure
> A project to create a secure image for the Udoo Neo using Buildroot

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
$ make
$ dd if=output/images/scard.img of=/dev/mmcblk0
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
