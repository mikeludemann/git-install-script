#!/bin/bash

echo "Checking git"

if git --version > /dev/null; then
  echo "git is already installed."
else
  echo "installing git."
  echo "operation system package manager check"
  if yum -v > /dev/null; then
    echo "installing git with yum"
    yum install git-core
  else
    echo "yum is not installed"
  fi
  if apt-get -V > /dev/null; then
    echo "installing git with apt-get"
    sudo apt-get install git
  else
    echo "apt-get is not installed"
  fi
  if port version > /dev/null; then
    echo "installing git with port"
    sudo port install git-core +svn +doc +bash_completion +gitweb
  else
    echo "port is not installed"
  fi
  if brew --version > /dev/null; then
    echo "installing git with brew"
    brew install git
  else
    echo "brew is not installed"
  fi
fi
