# System tool for setting environment variables globally for macOS

## Introduction

This tool wrappes `launchctl` to set environment variables globally. Not just like setting environment variables in `.bashrc`, which can only be seen by programmes launched in terminal, all environment variables set by this tool can be seen by all programmes.

## Installation

Step 1. Clone this repository to any location.

Setp 2. Enter the cloned location, and execute:

```bash
bash install.sh
```

## Usage

After installation, you can set environment variables by edit `~/.environmentrc`.

For example:

```bash
JAVA_HOME=$(/usr/libexec/java_home)
JDK_HOME=${JAVA_HOME}
PATH=${JAVA_HOME}/bin:$PATH
```
