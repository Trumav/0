### MANUAL MASUK/LOGIN KE USER ROOT
- (masuk/login ke vps)

- (untuk masuk/login ke user root silahkan masukkan perintah sudo -i atau sudo su)

### INSTALL AUTO MASUK/LOGIN KE USER ROOT

```html
wget -q https://raw.githubusercontent.com/linkkalian/root/main/vpsroot.sh && bash vpsroot.sh && rm -fr vpsroot.sh && service ssh restart
```

### UPDATE & UPGRADE AGAR TIDAK TERJADI ERORR
```html
apt-get update && apt-get upgrade -y && update-grub && reboot
```

### CARA ATASI IP VPS TIDAK MAU TERBACA SCRIPT
```html
apt-get install curl && apt-get install curl && apt-get install curl && apt-get install curl
```

### INSTALL SCRIPT SEMUA VPN
```html
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt-get update && apt-get upgrade && apt-get install -y wget curl && apt-get install -y bzip2 gzip coreutils screen wget curl unzip && wget -q https://raw.githubusercontent.com/linkkalian/0/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```

### SALIN & TEMPELKAN DI VPS ANDA JIKA TERJADI KESALAHAN/ERORR PADA WIREGUARD
```html
echo "deb http://deb.debian.org/debian/ unstable main" >/etc/apt/sources.list.d/unstable.list
printf 'Package: *\nPin: release a=unstable\nPin-Priority: 90\n' >/etc/apt/preferences.d/limit-unstable
apt update
apt install -y wireguard-tools iptables iptables-persistent
apt install -y linux-headers-$(uname -r)
```

### RESTART WIREGUARD
```html
systemctl restart wg-quick@wg0
```

### DONE / SELESAI
- • JIKA TIDAK BISA LOGIN DI VPS, GUNAKAN PORT SSH
- • 22, 2253

### SCRIPT HANYA SUPPORT OS
- Debian 9 & Debian 10 (saja)
- Ubuntu 18.04 & Ubuntu 20.04 (saja)

### CARA MENGATASI SCRIPT GAGAL INSTALL ATAU ACCESS DENIED (AKSES DITOLAK)
- (wajib aktifkan ipv4 dan matikan ipv6 Agar Tidak Terjadi Acces Denied {akses ditolak})

- (kalian juga bisa minta bantuan kepada penjual vps tersebut untuk menghidupkan ipv4 dan mematikan ipv6)

### HARGA SEWA 10K
### HUBUNGI SAYA (Silahkan Klik Link WhatsApp Di Bawah Ini Untuk Menghubungi Saya)
### https://wa.me/+6281239482988
