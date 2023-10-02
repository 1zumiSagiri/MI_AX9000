# Configure MI_AX9000
***Still on working !!!***

Guide for configure MI AX9000 router by Docker inside dev firmware.

Requirement:
1. [MI AX9000 router](https://openwrt.org/toh/xiaomi/ax9000)
2. 32GB USB3.0 drive (This blog use 256GB SAMSUNG PM961 with USB3.0 SSD enclosure)

May include: ssh,docker,[home-assistant](https://www.home-assistant.io/), Alexa Plug, Google Home,etc.

===

## 1. Install dev firmware, install drive and ssh
![image](https://github.com/1zumiSagiri/MI_AX900/blob/main/IMG/router.jpg)

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
    > otherwise won't detect router network devices

Then click `Create` button and wait for the container to start.

Optional:
install [HASC](https://hacs.xyz) for manage custom components and add-ons(?)
`wget -O - https://install.hacs.xyz | bash -`


## 3. Enter home-assistant, setup and configure network
![image](https://github.com/1zumiSagiri/MI_AX900/blob/main/IMG/ha_main.png)

After create account and enter main page of home-assistance, go to container console of HA