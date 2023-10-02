#/bin/sh
chroot /mnt
vi /etc/init.d/dropbear

start_service()
{
        #comment following lines
        #flg_ssh=`nvram get ssh_en`
        #channel=`/sbin/uci get /usr/share/xiaoqiang/xiaoqiang_version.version.CHANNEL`
        #if [ "$flg_ssh" != "1" -o "$channel" = "release" ]; then
        #       return 0
        #fi

        [ -s /etc/dropbear/dropbear_rsa_host_key ] || keygen

        . /lib/functions.sh
        . /lib/functions/network.sh

        config_load "${NAME}"
        config_foreach dropbear_instance dropbear
}

/etc/init.d/dropbear start

passwd root

vi /etc/config/dropbear/authorized_keys