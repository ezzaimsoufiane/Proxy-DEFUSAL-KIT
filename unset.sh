# debian
unset {http,https,ftp}_proxy
unset {HTTP,HTTPS,FTP}_PROXY
# npm
sudo npm config rm proxy -g
sudo npm config rm https-proxy -g
# git
git config --global --unset http.proxy
git config --global --unset https.proxy
# apt 
head -n -3 /etc/apt/apt.conf > tmp.conf  && sudo mv tmp.conf  /etc/apt/apt.conf
# snap 
sudo snap set system proxy.https=
sudo snap set system proxy.http=
### 
## assert that result == "" || null
echo $http_proxy 
echo $https_proxy
npm get https-proxy
npm get proxy
git config --global --get http.proxy
