# Birdie &nbsp; 
<img align="left" width="20%"  src="https://raw.githubusercontent.com/Ogglord/birdie/b04467a5eb5d85c0236397ac62125be038350b14/config/files/usr/share/pixmaps/system-logo-white.png" alt="Birdie OS">

This is a custom image built upon Fedora Atomic Desktops, the base image is [bazzite](https://github.com/ublue-os/bazzite/):stable. This spin adds a few developer tools, quality of life CLI tools. This is my daily driver. It's based on the bluebuild template and built using bluebuild's [github actions](https://github.com/blue-build/github-action). It can also be built locally using the bluebuild CLI tool.

<p>&nbsp;</p>


<p align="center">
    <a href="https://github.com/Ogglord/birdie/actions/workflows/build.yml">
    <img src="https://github.com/Ogglord/birdie/actions/workflows/build.yml/badge.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub last commit">
    <a href="https://github.com/Ogglord/birdie/commits/master">
    <img src="https://img.shields.io/github/last-commit/Ogglord/birdie.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub last commit">
    <a href="https://github.com/Ogglord/birdie/issues">
    <img src="https://img.shields.io/github/issues-raw/Ogglord/birdie.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub issues">
    <a href="https://github.com/Ogglord/birdie/pulls">
    <img src="https://img.shields.io/github/issues-pr-raw/Ogglord/birdie.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub pull requests">
</p>

<p>&nbsp;</p>

## Installation

The recommendation is to install another atomic Fedora distro first, and rebase the existing installation to the latest Birdie build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/ogglord/birdie-os:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/ogglord/birdie-os:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```
- Update the system
  ```
  ujust update
  ```  

The `latest` tag will automatically point to the latest build, updated daily.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/ogglord/birdie-os
```
## Applications

Default flatpaks

 - Floorp
 - Inkscape
 - VLC
 - Discord

Adding new apps should preferably be done using flatpak, nix, distrobox export or AppImages.

## Credits

Inspired by

 - https://github.com/briorg/bluefin
 - https://github.com/EpicOfficer/Quantix/

