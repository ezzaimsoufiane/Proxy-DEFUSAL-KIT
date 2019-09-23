# ENSIAS Proxy : TOUT-EN-UN

We all can admit that the poxy is a pain in the 🍑 <br/>
After only one year in ENSIAS, just seeing "10.23.201.11:3128" make me want to throw out.  

> Pardon my French

![YOU SUCK](https://i.imgur.com/wtw2lOR.jpg)

YES you do, now bookmark this so you wont anymore hehe !

This is a collection of all the proxy commands i needed to get around the university's proxy !
1. [Windows](#windows)
2. [Debian](#debian-)
3. [FEDORA/CENTOS](#fedora--centos-) 
4. [NPM](#npm--nodejs-)
5. [GIT family](#git-)
6. [Gradle](#gradle-)
7. [DOCKER](#docker-)


## WINDOWS:
  * SETTING :
  ```
  set http_proxy=10.23.201.11:3128
  set https_proxy=10.23.201.11:3128
  ```
  * UNSETTING :
  ```
  set http_proxy=
  set https_proxy=
  ```
  * Check proxy status
  ```
  netsh winhttp show proxy
  ```
## Debian :
 * SETTING :
``` 
export {http,https,ftp}_proxy="10.23.201.11:3128"
export {HTTP,HTTPS,FTP}_PROXY="10.23.201.11:3128"
```
 * UNSETTING :
 ```
 unset {http,https,ftp}_proxy
 unset {HTTP,HTTPS,FTP}_PROXY
 ```
 * CHECK STATUS :
 ```
 echo $http_proxy
 echo $https_proxy
 ```
 ## FEDORA / CENTOS :
  * SETTING :
  * UNSETTING :
  * CHECK STATUS :
 ## NPM / NODEJS :
  * SETTING :
  * UNSETTING :
  * CHECK STATUS :
 ## GIT :
  * SETTING :
  * UNSETTING :
  * CHECK STATUS :
 ## GRADLE :
  * SETTING :
  * UNSETTING :
  * CHECK STATUS :
 ## DOCKER :
  * SETTING :
  * UNSETTING :
  * CHECK STATUS :
