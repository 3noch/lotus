#!/usr/bin/env bash

mkdir -p _gopath
mkdir -p _install

NIX_PATH=nixpkgs=https://releases.nixos.org/nixpkgs/nixpkgs-20.03pre202090.93e8c34e2e4/nixexprs.tar.xz GOPATH=$PWD/_gopath PREFIX=$PWD/_install exec nix-shell -p go gcc git bazaarTools jq pkg-config ocl-icd intel-ocl opencl-headers rustup llvm clang gnumake coreutils nodejs
