#! /usr/bin/env bash
set -e
###########################################################################
#
# Java Bootstrap Installer
# https://github.com/polymimetic/ansible-role-java
#
# This script is intended to replicate the ansible role in a shell script
# format. It can be useful for debugging purposes or as a quick installer
# when it is inconvenient or impractical to run the ansible playbook.
#
# Usage:
# wget -qO - https://raw.githubusercontent.com/polymimetic/ansible-role-java/master/install.sh | bash
#
###########################################################################

if [ `id -u` = 0 ]; then
  printf "\033[1;31mThis script must NOT be run as root\033[0m\n" 1>&2
  exit 1
fi

###########################################################################
# Constants and Global Variables
###########################################################################

readonly GIT_REPO="https://github.com/polymimetic/ansible-role-java.git"
readonly GIT_RAW="https://raw.githubusercontent.com/polymimetic/ansible-role-java/master"

###########################################################################
# Basic Functions
###########################################################################

# Output Echoes
# https://github.com/cowboy/dotfiles
function e_error()   { echo -e "\033[1;31m✖  $@\033[0m";     }      # red
function e_success() { echo -e "\033[1;32m✔  $@\033[0m";     }      # green
function e_info()    { echo -e "\033[1;34m$@\033[0m";        }      # blue
function e_title()   { echo -e "\033[1;35m$@.......\033[0m"; }      # magenta

###########################################################################
# Install Java
# https://java.com/
###########################################################################

install_java() {
  e_title "Installing Java"

  local java_pkgs=(
    default-jre
    default-jre-headless
  )

  # Install java packages
  sudo apt install -yq "${java_pkgs[@]}"

  e_success "Java installed"
}

###########################################################################
# Program Start
###########################################################################

program_start() {
  install_java
}

program_start