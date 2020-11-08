# Ansible Example of Jenkins

## Requirements

  * Vagrant v2.2.7 (may work with any v2.x)
  * VirtualBox v6.1.6 (may work with any v6.x)

Commands all assume your using a Mac, so for Linux or Windows you might need to change steps but I'm unaware what changes are needed.

## Tested Combinations

The following have been tested, other combinations might work;

- Vagrant v2.2.7 + VirtualBox v6.1.6 + CentOS 7 + Java 8 + Jenkins

## Quick Start

Simple as, ` vagrant up`, and a new vm will be created, with Java 8 and Jenkins installed.

## Jenkins homepage

http://localhost:8181/

## Notes

The files `setup_*.yaml` are used as a work around to install the latest version of ansible, including git so that ansible galaxy can install from github.
