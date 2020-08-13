iptf() {
      read -p "please input your locaion" iptl
      mkdir $iptl
}
tls() {
     sct
         curl  https://get.acme.sh | sh
         read -p "please input your domain: " dm
         ~/.acme.sh/acme.sh --issue -d $dm --standalone -k ec-256
         ~/.acme.sh/acme.sh --installcert -d $dm --fullchainpath $iptl/ccl.crt --keypath $iptl/ccl.key --ecc
 }

iptf
tls
