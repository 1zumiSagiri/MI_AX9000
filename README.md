# Configure MI_AX9000
***Still on working !!!***

Configure MI AX9000 router by Docker inside dev firmware.

Requirement:
1. [MI AX9000 router](https://openwrt.org/toh/xiaomi/ax9000)
2. 32GB USB3.0 drive (This blog use 256GB SAMSUNG PM961 with USB3.0 SSD enclosure)

May include: ssh,docker,[home-assistant](https://www.home-assistant.io/), Alexa Plug, Google Home,etc.

===

## 1. Install dev firmware, install drive and ssh
![image](https://github.com/1zumiSagiri/MI_AX900/blob/main/IMG/router.jpg)

https://github.com/1zumiSagiri/ax9000_tool

Backup MIAX9000 bdata(located in /dev/mtd18)
>nanddump -f /tmp/bdata_mtd18.img /dev/mtd18

## 2. Create container
![image](https://github.com/1zumiSagiri/MI_AX900/blob/main/IMG/potainer.png)
In container list, create a container with the following settings:

1. image: `homeassistant/home-assistant:latest`
2. Always pull latest image: `ON`
3. Manual network port publishing: `host: 8123 container: 8123`
    > same as "-p 8123:8123" in docker run command
4. Enable access control: `Administator`
5. Advance container settings: 
    1. Command & logging - Console: `-i -t`
    2. Volumes - container -> host: `/mnt` -> `/`
    3. Network - Network mode: `host`
    > For HomeKit users, step 3 is required.

Then click `Create` button and wait for the container to start.

Optional:
install [HASC](https://hacs.xyz) for manage custom components and add-ons(?)
`wget -O - https://install.hacs.xyz | bash -`
![image](https://github.com/1zumiSagiri/MI_AX9000/blob/main/IMG/hasc.png)


## 3. Enter home-assistant, setup and configure network
![image](https://github.com/1zumiSagiri/MI_AX900/blob/main/IMG/ha_main.png)

After create account and enter main page of home-assistance
![image](https://github.com/1zumiSagiri/MI_AX9000/blob/main/IMG/ha_main2.png)

![image](https://github.com/1zumiSagiri/MI_AX9000/blob/main/IMG/ha_network.png)
