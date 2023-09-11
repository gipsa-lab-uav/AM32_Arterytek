# Flash Artery MCU with OpenOCD

1. download and install OpenOCD Artery fork :

https://github.com/ArteryTek/openocd/releases

2. add this script to the "script" directory : [at32_utils.tcl](at32_utils.tcl)

3. Connect the esc to the stlink programmer and the alimentation

4. Run openocd :

> ./bin/openocd -s scripts -f ./interface/stlink.cfg -f ./target/at32f421xx.cfg -f ./at32_utils.tcl

5. in another terminal run telnet :

> telnet localhost 4444

6. in telnet : first disable write protection (if necessary) :

> reset halt
> at32f421_disable_write_protection

7. flash the bootloader :

> flash write_image erase unlock /path_to_AT32F421_AM32_Bootloader/Objects/F421_PB4_BOOTLOADER_V2.hex
> 
> reset halt
