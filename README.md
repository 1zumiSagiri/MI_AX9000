# Configure MI_AX9000
***Still on working !!!***

Guide for configure MI AX9000 router by Docker inside dev firmware.

Requirement:
1. [MI AX9000 router](https://www.mi.com/global/product/mi-router-ax9000/)
2. > 32GB USB3.0 drive (This blog use 256GB SAMSUNG PM961 with USB3.0 SSD enclosure)

May include: ssh,docker,[home-assistant](https://www.home-assistant.io/), Alexa Plug, Google Home,etc.

===

## 1. Install dev firmware, install drive and ssh

## 2. Create container
In container list, create a container with the following settings:

1. image: `homeassistant/home-assistant:latest`
2. Always pull latest image: `ON`
3. Manual network port publishing: `host: 8123 container: 8123`
    //same as "-p 8123:8123" in docker run command
4. Enable access control: `Administator`

5. Advance container settings: 
    1. Command & logging - Console: `-i -t`
    2. Volumes - container -> host: `/mnt` -> `/`

Then click `Create` button and wait for the container to start.

## 3. Enter home-assistant