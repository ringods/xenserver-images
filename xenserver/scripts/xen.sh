# Setup security groups
sed -i -e 's/net.bridge.bridge-nf-call-iptables = 0/net.bridge.bridge-nf-call-iptables = 1/g' /etc/sysctl.conf
sed -i -e 's/net.bridge.bridge-nf-call-arptables = 0/net.bridge.bridge-nf-call-arptables = 1/g' /etc/sysctl.conf

# Lower dom0_mem
/opt/xensource/libexec/xen-cmdline --set-xen dom0_mem=400M,max:400M
