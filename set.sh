# debian
export {http,https,ftp}_proxy="http://10.23.201.11:3128"
export {HTTP,HTTPS,FTP}_PROXY="http://10.23.201.11:3128"
# npm
sudo npm config set proxy http://10.23.201.11:3128 -g
sudo npm config set https-proxy http://10.23.201.11:3128 -g
sudo npm config set registry http://registry.npm.taobao.org -g
# git
git config --global http.proxy http://10.23.201.11:3128
git config --global https.proxy https://10.23.201.11:3128
# apt 
echo "Acquire::http::proxy  \"http://10.23.201.11:3128/\";
Acquire::ftp::proxy \"http://10.23.201.11:3128/\";
Acquire::https::proxy \"http://10.23.201.11:3128/\";" | sudo tee -a /etc/apt/apt.conf 
# snap 
sudo snap set system proxy.http="http://10.23.201.11:3128"
sudo snap set system proxy.https="http://10.23.201.11:3128"
### 
## assert that result == "http://10.23.201.11:3128" || "http://10.23.201.11:3128/"
echo $http_proxy 
echo $https_proxy
npm get https-proxy
npm get proxy
git config --global --get http.proxy
