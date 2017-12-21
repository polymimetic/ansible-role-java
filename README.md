# Ansible Role: Java

[![Build Status](https://img.shields.io/travis/polymimetic/ansible-role-java.svg?style=flat-square)](https://travis-ci.org/polymimetic/ansible-role-java)
[![Release](https://img.shields.io/github/tag/polymimetic/ansible-role-java.svg?style=flat-square)](https://github.com/polymimetic/ansible-role-java/releases)
[![License: MIT](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-polymimetic.java-blue.svg?style=flat-square)](https://galaxy.ansible.com/polymimetic/java/)

Installs [Java](https://www.java.com/) for Debian/Ubuntu linux servers.

## Requirements

No requirements.

## Dependencies

No dependencies.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    # The defaults provided by this role are specific to each distribution.
    java_packages:
      - openjdk-8-jdk

Set the version/development kit of Java to install, along with any other necessary Java packages.

    java_home: ""

If set, the role will set the global environment variable `JAVA_HOME` to this value.

## Example Playbook

To run the role, include it as follows:

    - hosts: all
      roles:
         - { role: polymimetic.java, x: 42 }

## Credits

This role takes inspiration from the following Ansible roles:

- [geerlingguy.java](https://github.com/geerlingguy/ansible-role-java)

## License

This software package is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the [LICENSE](./LICENSE) file for details.

## Author Information

This role was created in 2017 by [Polymimetic](https://github.com/polymimetic).

* ansible-role-java generated using [ansible-role-skeleton](https://github.com/polymimetic/ansible-role-skeleton)