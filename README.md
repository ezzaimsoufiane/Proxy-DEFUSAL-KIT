# ENSIAS Proxy : TOUT-EN-UN

We all can admit that the poxy is a pain in the 🍑 <br/>
After only one year in ENSIAS, just seeing "10.23.201.11:3128" make me want to throw out.  

> Pardon my French

![YOU SUCK](https://i.imgur.com/wtw2lOR.jpg)

YES you do, now bookmark this so you wont anymore hehe !

<br/>
Before You go through this document, you could use the script set.sh 
to set :
* Debian (system)
* NPM
* GIT
* APT
* SNAP
by executing 
```sh
sudo ./set.sh
```
the unset.sh file will be available soon.



This is a collection of all the proxy commands i needed to get around it, contributions are very welcome to make this a reference.

- [ENSIAS Proxy : TOUT-EN-UN](#ensias-proxy--tout-en-un)
  - [WINDOWS:](#windows)
  - [Debian :](#debian-)
    - [PIP :](#pip-)
  - [FEDORA / CENTOS :](#fedora--centos-)
  - [NPM / NODEJS :](#npm--nodejs-)
  - [GIT :](#git-)
  - [GRADLE :](#gradle-)
  - [DOCKER :](#docker-)
  - [APT :](#apt-)
  - [SNAP :](#snap-)
  - [Special Thanks](#special-thanks)


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
export {http,https,ftp}_proxy="http://10.23.201.11:3128"
export {HTTP,HTTPS,FTP}_PROXY="http://10.23.201.11:3128"
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
 * USING sudo :
 
 First you need to export HTTP_PROXY then use the -E flag:
 ```
 -E, --preserve-env
             Indicates to the security policy that the user wishes to preserve their
             existing environment variables.  The security policy may return an error
             if the user does not have permission to preserve the environment.
 ```
 ```
 sudo -E bash -c 'echo $HTTP_PROXY'
 ```
### PIP : 
pip proxy is automatically set with the commands in this Debian section
 ## FEDORA / CENTOS :
  * SETTING :
  ```
  export http_proxy=http://10.23.201.11:3128
  ```
  - Without SHELL :
  ```
  echo "http_proxy=http://10.23.201.11:3128/" > /etc/environment 
  ```
  - With SHELL
  ```
  echo "export http_proxy=http://10.23.201.11:3128/" > /etc/profile.d/http_proxy.sh \with SHELL
  ```
  - Other programms (YUM) :
  ```
  echo "proxy=http://10.23.201.11:3128" > /etc/yum.conf
  ```
  * UNSETTING :
  ```
  unset http_proxy
  http_proxy=""
  ```
  * CHECK STATUS :
  ```
  echo $http_proxy
  cat /etc/yum.conf
  ```
   * USING sudo :
   
First you need to export HTTP_PROXY then use the -E flag:
 ```
 -E, --preserve-env
             Indicates to the security policy that the user wishes to preserve their
             existing environment variables.  The security policy may return an error
             if the user does not have permission to preserve the environment.
 ```
 ```
 sudo -E bash -c 'echo $HTTP_PROXY'
 ```
 ## NPM / NODEJS :
  * SETTING :
  
  PS: use sudo if necessary
  
  ```
  npm config set proxy http://10.23.201.11:3128 -g
  npm config set https-proxy http://10.23.201.11:3128 -g
  npm config set registry http://registry.npm.taobao.org -g
  ```

  * UNSETTING :
  ```
  npm config rm proxy -g
  npm config rm https-proxy -g
  ```
  * CHECK STATUS :
  ```
  npm get https-proxy
  npm get proxy
  ```
 ## GIT :
  * SETTING :
  ```
  git config --global http.proxy http://10.23.201.11:3128
  git config --global https.proxy https://10.23.201.11:3128

  ```
  * UNSETTING :
  ```
  git config --global --unset http.proxy
  git config --global --unset https.proxy
  ```
  * CHECK STATUS :
  ```
  git config --global --get http.proxy
  ```
 ## GRADLE :
  * SETTING :
  ```
export GRADLE_OPTS=-Dhttp.proxyHost=http://10.23.201.11 -Dhttp.proxyPort=3128 -Dhttps.proxyHost=http://10.23.201.11 -Dhttps.proxyPort=3128
```
  * UNSETTING :
  ```
  unset GRADLE_OPTS
  ```
  * CHECK STATUS :
  ```
  echo $GRADLE_OPTS
  ```
 ## DOCKER :
 this is not working and needs to be updated
  * SETTING :
  ```
  sudo systemctl start docker
  sudo vi ~/.docker/config.json
  HTTP_PROXY="http://10.23.201.11:3128"
  HTTPS_PROXY="https://10.23.201.11:3128"
  systemctl daemon-reload
  systemctl restart docker
  ```
  * UNSETTING :
  ```
  vi /etc/sysconfig/docker
  HTTP_PROXY=""
  HTTPS_PROXY=""
  systemctl daemon-reload
  systemctl docker restart
  ```
 * MISC:
 
 A very good read : <br/>
 https://elegantinfrastructure.com/docker/ultimate-guide-to-docker-http-proxy-configuration/
 
 ## APT : 
  * SETTING :
  ```
  echo "Acquire::http::proxy  \"http://10.23.201.11:3128/\";
Acquire::ftp::proxy \"http://10.23.201.11:3128/\";
Acquire::https::proxy \"http://10.23.201.11:3128/\";" | sudo tee -a /etc/apt/apt.conf 
  ```
  * UNSETTING :
  ```
  head -n -3 /etc/apt/apt.conf > tmp.conf  && sudo mv tmp.conf  /etc/apt/apt.conf
  ```
 ## SNAP : 
  * SETTING :
  ```
  sudo snap set system proxy.http="http://10.23.201.11:3128"
  sudo snap set system proxy.https="http://10.23.201.11:3128"
  ```
  * UNSETTING :
  ```
  sudo snap set system proxy.https=
  sudo snap set system proxy.http=
  ```

## Special Thanks
I thank the original owner of this repository, and all the contributors.
  
 
