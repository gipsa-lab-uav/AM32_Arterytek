proc at32f421_disable_write_protection {} {
    set AT32_FLASH_BANK1_REG_1 0x40022000
    set AT32_USD_ADDR_1 0x1FFFF800
    set KEY1 0x45670123
    set KEY2 0xCDEF89AB
    set AT32_FLASH_PSR_OFFSET             0x00
    set AT32_FLASH_UNLOCK_OFFSET          0x04
    set AT32_FLASH_USD_UNLOCK_OFFSET      0x08
    set AT32_FLASH_STS_OFFSET             0x0C
    set AT32_FLASH_CTRL_OFFSET            0x10
    set AT32_FLASH_ADDR_OFFSET            0x14
    set AT32_FLASH_USD_OFFSET             0x1C
    set AT32_FLASH_EPPS_OFFSET            0x20
    set AT32_FLASH_EPPS1_OFFSET           0x2C
    
    reset halt
    wait_halt

    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY1
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY2
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY1
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY2

    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x220
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x260
    
    sleep 1000
    
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY1
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY2
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY1
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY2

    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x210
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1] 16 0xA5
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+2] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+4] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+6] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+8] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+10] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+12] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_USD_ADDR_1+14] 16 0xFF
    at32f421xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x80

    sleep 1000
    
    reset halt
}

add_usage_text at32f421_disable_write_protection ""
add_help_text at32f421_disable_write_protection "Disable AT32F421 write protection"

proc at32f415_disable_write_protection {} {
    set AT32_FLASH_BANK1_REG_1 0x40022000
    set AT32_USD_ADDR_1 0x1FFFF800
    set KEY1 0x45670123
    set KEY2 0xCDEF89AB
    set AT32_FLASH_PSR_OFFSET             0x00
    set AT32_FLASH_UNLOCK_OFFSET          0x04
    set AT32_FLASH_USD_UNLOCK_OFFSET      0x08
    set AT32_FLASH_STS_OFFSET             0x0C
    set AT32_FLASH_CTRL_OFFSET            0x10
    set AT32_FLASH_ADDR_OFFSET            0x14
    set AT32_FLASH_USD_OFFSET             0x1C
    set AT32_FLASH_EPPS_OFFSET            0x20
    set AT32_FLASH_EPPS1_OFFSET           0x2C
    
    reset halt
    wait_halt

    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY1
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY2
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY1
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY2

    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x220
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x260
    
    sleep 1000
    
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY1
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_UNLOCK_OFFSET] 32 $KEY2
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY1
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_USD_UNLOCK_OFFSET] 32 $KEY2

    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x210
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1] 16 0xA5
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+2] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+4] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+6] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+8] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+10] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+12] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_USD_ADDR_1+14] 16 0xFF
    at32f415xx.cpu write_memory [expr $AT32_FLASH_BANK1_REG_1+$AT32_FLASH_CTRL_OFFSET] 32 0x80

    sleep 1000
    
    reset halt
}

add_usage_text at32f415_disable_write_protection ""
add_help_text at32f415_disable_write_protection "Disable AT32F415 write protection"

