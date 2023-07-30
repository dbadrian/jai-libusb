libusb_config_descriptor :: struct {
    bLength:             u8;

    bDescriptorType:     u8;

    wTotalLength:        u16;

    bNumInterfaces:      u8;

    bConfigurationValue: u8;

    iConfiguration:      u8;

    bmAttributes:        u8;

    MaxPower:            u8;

    // to avoid clash with keyword
    interface_:           *libusb_interface;

    extra:               *u8;

    extra_length:        s32;
}


#if OS == .WINDOWS {
    #load "generated_windows.jai";
    // TODO : WINDOWS
    // libvulkan :: #library "win/vulkan-1";
} else #if OS == .LINUX {
    #load "generated_linux.jai";
    libusb :: #system_library "libusb-1.0";
}

#scope_module


size_t  :: u64;
ssize_t  :: s64;
POSIX :: #import "POSIX";
timeval :: POSIX.timeval;
