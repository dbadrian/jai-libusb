//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



LIBUSB_API_VERSION :: 0x01000109;

LIBUSBX_API_VERSION :: LIBUSB_API_VERSION;

LIBUSB_DT_DEVICE_SIZE :: 18;
LIBUSB_DT_CONFIG_SIZE :: 9;
LIBUSB_DT_INTERFACE_SIZE :: 9;
LIBUSB_DT_ENDPOINT_SIZE :: 7;
LIBUSB_DT_ENDPOINT_AUDIO_SIZE :: 9;
LIBUSB_DT_HUB_NONVAR_SIZE :: 7;
LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE :: 6;
LIBUSB_DT_BOS_SIZE :: 5;
LIBUSB_DT_DEVICE_CAPABILITY_SIZE :: 3;

LIBUSB_BT_USB_2_0_EXTENSION_SIZE :: 7;
LIBUSB_BT_SS_USB_DEVICE_CAPABILITY_SIZE :: 10;
LIBUSB_BT_CONTAINER_ID_SIZE :: 20;

LIBUSB_DT_BOS_MAX_SIZE :: LIBUSB_DT_BOS_SIZE + LIBUSB_BT_USB_2_0_EXTENSION_SIZE + LIBUSB_BT_SS_USB_DEVICE_CAPABILITY_SIZE + LIBUSB_BT_CONTAINER_ID_SIZE;

LIBUSB_ENDPOINT_ADDRESS_MASK :: 0x0f;
LIBUSB_ENDPOINT_DIR_MASK :: 0x80;

LIBUSB_TRANSFER_TYPE_MASK :: 0x03;

LIBUSB_ISO_SYNC_TYPE_MASK :: 0x0c;

LIBUSB_ISO_USAGE_TYPE_MASK :: 0x30;

LIBUSB_ERROR_COUNT :: 14;

LIBUSB_HOTPLUG_NO_FLAGS :: 0;

LIBUSB_HOTPLUG_MATCH_ANY :: -1;

/** \ingroup libusb_desc
* Device and/or Interface Class codes */
libusb_class_code :: enum u32 {
    PER_INTERFACE       :: 0;

    AUDIO               :: 1;

    COMM                :: 2;

    HID                 :: 3;

    PHYSICAL            :: 5;

    IMAGE               :: 6;
    PTP                 :: 6;

    PRINTER             :: 7;

    MASS_STORAGE        :: 8;

    HUB                 :: 9;

    DATA                :: 10;

    SMART_CARD          :: 11;

    CONTENT_SECURITY    :: 13;

    VIDEO               :: 14;

    PERSONAL_HEALTHCARE :: 15;

    DIAGNOSTIC_DEVICE   :: 220;

    WIRELESS            :: 224;

    MISCELLANEOUS       :: 239;

    APPLICATION         :: 254;

    VENDOR_SPEC         :: 255;

    LIBUSB_CLASS_PER_INTERFACE       :: PER_INTERFACE;

    LIBUSB_CLASS_AUDIO               :: AUDIO;

    LIBUSB_CLASS_COMM                :: COMM;

    LIBUSB_CLASS_HID                 :: HID;

    LIBUSB_CLASS_PHYSICAL            :: PHYSICAL;

    LIBUSB_CLASS_IMAGE               :: IMAGE;
    LIBUSB_CLASS_PTP                 :: PTP;

    LIBUSB_CLASS_PRINTER             :: PRINTER;

    LIBUSB_CLASS_MASS_STORAGE        :: MASS_STORAGE;

    LIBUSB_CLASS_HUB                 :: HUB;

    LIBUSB_CLASS_DATA                :: DATA;

    LIBUSB_CLASS_SMART_CARD          :: SMART_CARD;

    LIBUSB_CLASS_CONTENT_SECURITY    :: CONTENT_SECURITY;

    LIBUSB_CLASS_VIDEO               :: VIDEO;

    LIBUSB_CLASS_PERSONAL_HEALTHCARE :: PERSONAL_HEALTHCARE;

    LIBUSB_CLASS_DIAGNOSTIC_DEVICE   :: DIAGNOSTIC_DEVICE;

    LIBUSB_CLASS_WIRELESS            :: WIRELESS;

    LIBUSB_CLASS_MISCELLANEOUS       :: MISCELLANEOUS;

    LIBUSB_CLASS_APPLICATION         :: APPLICATION;

    LIBUSB_CLASS_VENDOR_SPEC         :: VENDOR_SPEC;
}

/** \ingroup libusb_desc
* Descriptor types as defined by the USB specification. */
libusb_descriptor_type :: enum u32 {
    DEVICE                :: 1;

    CONFIG                :: 2;

    STRING                :: 3;

    INTERFACE             :: 4;

    ENDPOINT              :: 5;

    BOS                   :: 15;

    DEVICE_CAPABILITY     :: 16;

    HID                   :: 33;

    REPORT                :: 34;

    PHYSICAL              :: 35;

    HUB                   :: 41;

    SUPERSPEED_HUB        :: 42;

    SS_ENDPOINT_COMPANION :: 48;

    LIBUSB_DT_DEVICE                :: DEVICE;

    LIBUSB_DT_CONFIG                :: CONFIG;

    LIBUSB_DT_STRING                :: STRING;

    LIBUSB_DT_INTERFACE             :: INTERFACE;

    LIBUSB_DT_ENDPOINT              :: ENDPOINT;

    LIBUSB_DT_BOS                   :: BOS;

    LIBUSB_DT_DEVICE_CAPABILITY     :: DEVICE_CAPABILITY;

    LIBUSB_DT_HID                   :: HID;

    LIBUSB_DT_REPORT                :: REPORT;

    LIBUSB_DT_PHYSICAL              :: PHYSICAL;

    LIBUSB_DT_HUB                   :: HUB;

    LIBUSB_DT_SUPERSPEED_HUB        :: SUPERSPEED_HUB;

    LIBUSB_DT_SS_ENDPOINT_COMPANION :: SS_ENDPOINT_COMPANION;
}

/** \ingroup libusb_desc
* Endpoint direction. Values for bit 7 of the
* \ref libusb_endpoint_descriptor::bEndpointAddress "endpoint address" scheme.
*/
libusb_endpoint_direction :: enum u32 {
    OUT :: 0;

    IN  :: 128;

    LIBUSB_ENDPOINT_OUT :: OUT;

    LIBUSB_ENDPOINT_IN  :: IN;
}

/** \ingroup libusb_desc
* Endpoint transfer type. Values for bits 0:1 of the
* \ref libusb_endpoint_descriptor::bmAttributes "endpoint attributes" field.
*/
libusb_endpoint_transfer_type :: enum u32 {
    CONTROL     :: 0;

    ISOCHRONOUS :: 1;

    BULK        :: 2;

    INTERRUPT   :: 3;

    LIBUSB_ENDPOINT_TRANSFER_TYPE_CONTROL     :: CONTROL;

    LIBUSB_ENDPOINT_TRANSFER_TYPE_ISOCHRONOUS :: ISOCHRONOUS;

    LIBUSB_ENDPOINT_TRANSFER_TYPE_BULK        :: BULK;

    LIBUSB_ENDPOINT_TRANSFER_TYPE_INTERRUPT   :: INTERRUPT;
}

/** \ingroup libusb_misc
* Standard requests, as defined in table 9-5 of the USB 3.0 specifications */
libusb_standard_request :: enum u32 {
    REQUEST_GET_STATUS        :: 0;

    REQUEST_CLEAR_FEATURE     :: 1;

    REQUEST_SET_FEATURE       :: 3;

    REQUEST_SET_ADDRESS       :: 5;

    REQUEST_GET_DESCRIPTOR    :: 6;

    REQUEST_SET_DESCRIPTOR    :: 7;

    REQUEST_GET_CONFIGURATION :: 8;

    REQUEST_SET_CONFIGURATION :: 9;

    REQUEST_GET_INTERFACE     :: 10;

    REQUEST_SET_INTERFACE     :: 11;

    REQUEST_SYNCH_FRAME       :: 12;

    REQUEST_SET_SEL           :: 48;

    SET_ISOCH_DELAY           :: 49;

    LIBUSB_REQUEST_GET_STATUS        :: REQUEST_GET_STATUS;

    LIBUSB_REQUEST_CLEAR_FEATURE     :: REQUEST_CLEAR_FEATURE;

    LIBUSB_REQUEST_SET_FEATURE       :: REQUEST_SET_FEATURE;

    LIBUSB_REQUEST_SET_ADDRESS       :: REQUEST_SET_ADDRESS;

    LIBUSB_REQUEST_GET_DESCRIPTOR    :: REQUEST_GET_DESCRIPTOR;

    LIBUSB_REQUEST_SET_DESCRIPTOR    :: REQUEST_SET_DESCRIPTOR;

    LIBUSB_REQUEST_GET_CONFIGURATION :: REQUEST_GET_CONFIGURATION;

    LIBUSB_REQUEST_SET_CONFIGURATION :: REQUEST_SET_CONFIGURATION;

    LIBUSB_REQUEST_GET_INTERFACE     :: REQUEST_GET_INTERFACE;

    LIBUSB_REQUEST_SET_INTERFACE     :: REQUEST_SET_INTERFACE;

    LIBUSB_REQUEST_SYNCH_FRAME       :: REQUEST_SYNCH_FRAME;

    LIBUSB_REQUEST_SET_SEL           :: REQUEST_SET_SEL;

    LIBUSB_SET_ISOCH_DELAY           :: SET_ISOCH_DELAY;
}

/** \ingroup libusb_misc
* Request type bits of the
* \ref libusb_control_setup::bmRequestType "bmRequestType" field in control
* transfers. */
libusb_request_type :: enum u32 {
    STANDARD :: 0;

    CLASS    :: 32;

    VENDOR   :: 64;

    RESERVED :: 96;

    LIBUSB_REQUEST_TYPE_STANDARD :: STANDARD;

    LIBUSB_REQUEST_TYPE_CLASS    :: CLASS;

    LIBUSB_REQUEST_TYPE_VENDOR   :: VENDOR;

    LIBUSB_REQUEST_TYPE_RESERVED :: RESERVED;
}

/** \ingroup libusb_misc
* Recipient bits of the
* \ref libusb_control_setup::bmRequestType "bmRequestType" field in control
* transfers. Values 4 through 31 are reserved. */
libusb_request_recipient :: enum u32 {
    DEVICE    :: 0;

    INTERFACE :: 1;

    ENDPOINT  :: 2;

    OTHER     :: 3;

    LIBUSB_RECIPIENT_DEVICE    :: DEVICE;

    LIBUSB_RECIPIENT_INTERFACE :: INTERFACE;

    LIBUSB_RECIPIENT_ENDPOINT  :: ENDPOINT;

    LIBUSB_RECIPIENT_OTHER     :: OTHER;
}

/** \ingroup libusb_desc
* Synchronization type for isochronous endpoints. Values for bits 2:3 of the
* \ref libusb_endpoint_descriptor::bmAttributes "bmAttributes" field in
* libusb_endpoint_descriptor.
*/
libusb_iso_sync_type :: enum u32 {
    NONE     :: 0;

    ASYNC    :: 1;

    ADAPTIVE :: 2;

    SYNC     :: 3;

    LIBUSB_ISO_SYNC_TYPE_NONE     :: NONE;

    LIBUSB_ISO_SYNC_TYPE_ASYNC    :: ASYNC;

    LIBUSB_ISO_SYNC_TYPE_ADAPTIVE :: ADAPTIVE;

    LIBUSB_ISO_SYNC_TYPE_SYNC     :: SYNC;
}

/** \ingroup libusb_desc
* Usage type for isochronous endpoints. Values for bits 4:5 of the
* \ref libusb_endpoint_descriptor::bmAttributes "bmAttributes" field in
* libusb_endpoint_descriptor.
*/
libusb_iso_usage_type :: enum u32 {
    DATA     :: 0;

    FEEDBACK :: 1;

    IMPLICIT :: 2;

    LIBUSB_ISO_USAGE_TYPE_DATA     :: DATA;

    LIBUSB_ISO_USAGE_TYPE_FEEDBACK :: FEEDBACK;

    LIBUSB_ISO_USAGE_TYPE_IMPLICIT :: IMPLICIT;
}

/** \ingroup libusb_desc
* Supported speeds (wSpeedSupported) bitfield. Indicates what
* speeds the device supports.
*/
libusb_supported_speed :: enum u32 {
    LOW_SPEED_OPERATION   :: 1;

    FULL_SPEED_OPERATION  :: 2;

    HIGH_SPEED_OPERATION  :: 4;

    SUPER_SPEED_OPERATION :: 8;

    LIBUSB_LOW_SPEED_OPERATION   :: LOW_SPEED_OPERATION;

    LIBUSB_FULL_SPEED_OPERATION  :: FULL_SPEED_OPERATION;

    LIBUSB_HIGH_SPEED_OPERATION  :: HIGH_SPEED_OPERATION;

    LIBUSB_SUPER_SPEED_OPERATION :: SUPER_SPEED_OPERATION;
}

/** \ingroup libusb_desc
* Masks for the bits of the
* \ref libusb_usb_2_0_extension_descriptor::bmAttributes "bmAttributes" field
* of the USB 2.0 Extension descriptor.
*/
libusb_usb_2_0_extension_attributes :: enum u32 {
    LIBUSB_BM_LPM_SUPPORT :: 2;
}

/** \ingroup libusb_desc
* Masks for the bits of the
* \ref libusb_ss_usb_device_capability_descriptor::bmAttributes "bmAttributes" field
* field of the SuperSpeed USB Device Capability descriptor.
*/
libusb_ss_usb_device_capability_attributes :: enum u32 {
    LIBUSB_BM_LTM_SUPPORT :: 2;
}

/** \ingroup libusb_desc
* USB capability types
*/
libusb_bos_type :: enum u32 {
    WIRELESS_USB_DEVICE_CAPABILITY :: 1;

    USB_2_0_EXTENSION              :: 2;

    SS_USB_DEVICE_CAPABILITY       :: 3;

    CONTAINER_ID                   :: 4;

    LIBUSB_BT_WIRELESS_USB_DEVICE_CAPABILITY :: WIRELESS_USB_DEVICE_CAPABILITY;

    LIBUSB_BT_USB_2_0_EXTENSION              :: USB_2_0_EXTENSION;

    LIBUSB_BT_SS_USB_DEVICE_CAPABILITY       :: SS_USB_DEVICE_CAPABILITY;

    LIBUSB_BT_CONTAINER_ID                   :: CONTAINER_ID;
}

/** \ingroup libusb_desc
* A structure representing the standard USB device descriptor. This
* descriptor is documented in section 9.6.1 of the USB 3.0 specification.
* All multiple-byte fields are represented in host-endian format.
*/
libusb_device_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:            u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_DEVICE LIBUSB_DT_DEVICE in this
    * context. */
    bDescriptorType:    u8;

    /** USB specification release number in binary-coded decimal. A value of
    * 0x0200 indicates USB 2.0, 0x0110 indicates USB 1.1, etc. */
    bcdUSB:             u16;

    /** USB-IF class code for the device. See \ref libusb_class_code. */
    bDeviceClass:       u8;

    /** USB-IF subclass code for the device, qualified by the bDeviceClass
    * value */
    bDeviceSubClass:    u8;

    /** USB-IF protocol code for the device, qualified by the bDeviceClass and
    * bDeviceSubClass values */
    bDeviceProtocol:    u8;

    /** Maximum packet size for endpoint 0 */
    bMaxPacketSize0:    u8;

    /** USB-IF vendor ID */
    idVendor:           u16;

    /** USB-IF product ID */
    idProduct:          u16;

    /** Device release number in binary-coded decimal */
    bcdDevice:          u16;

    /** Index of string descriptor describing manufacturer */
    iManufacturer:      u8;

    /** Index of string descriptor describing product */
    iProduct:           u8;

    /** Index of string descriptor containing device serial number */
    iSerialNumber:      u8;

    /** Number of possible configurations */
    bNumConfigurations: u8;
}

/** \ingroup libusb_desc
* A structure representing the standard USB endpoint descriptor. This
* descriptor is documented in section 9.6.6 of the USB 3.0 specification.
* All multiple-byte fields are represented in host-endian format.
*/
libusb_endpoint_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:          u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_ENDPOINT LIBUSB_DT_ENDPOINT in
    * this context. */
    bDescriptorType:  u8;

    /** The address of the endpoint described by this descriptor. Bits 0:3 are
    * the endpoint number. Bits 4:6 are reserved. Bit 7 indicates direction,
    * see \ref libusb_endpoint_direction. */
    bEndpointAddress: u8;

    /** Attributes which apply to the endpoint when it is configured using
    * the bConfigurationValue. Bits 0:1 determine the transfer type and
    * correspond to \ref libusb_endpoint_transfer_type. Bits 2:3 are only used
    * for isochronous endpoints and correspond to \ref libusb_iso_sync_type.
    * Bits 4:5 are also only used for isochronous endpoints and correspond to
    * \ref libusb_iso_usage_type. Bits 6:7 are reserved. */
    bmAttributes:     u8;

    /** Maximum packet size this endpoint is capable of sending/receiving. */
    wMaxPacketSize:   u16;

    /** Interval for polling endpoint for data transfers. */
    bInterval:        u8;

    /** For audio devices only: the rate at which synchronization feedback
    * is provided. */
    bRefresh:         u8;

    /** For audio devices only: the address if the synch endpoint */
    bSynchAddress:    u8;

    /** Extra descriptors. If libusb encounters unknown endpoint descriptors,
    * it will store them here, should you wish to parse them. */
    extra:            *u8;

    /** Length of the extra descriptors, in bytes. Must be non-negative. */
    extra_length:     s32;
}

/** \ingroup libusb_desc
* A structure representing the standard USB interface descriptor. This
* descriptor is documented in section 9.6.5 of the USB 3.0 specification.
* All multiple-byte fields are represented in host-endian format.
*/
libusb_interface_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:            u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_INTERFACE LIBUSB_DT_INTERFACE
    * in this context. */
    bDescriptorType:    u8;

    /** Number of this interface */
    bInterfaceNumber:   u8;

    /** Value used to select this alternate setting for this interface */
    bAlternateSetting:  u8;

    /** Number of endpoints used by this interface (excluding the control
    * endpoint). */
    bNumEndpoints:      u8;

    /** USB-IF class code for this interface. See \ref libusb_class_code. */
    bInterfaceClass:    u8;

    /** USB-IF subclass code for this interface, qualified by the
    * bInterfaceClass value */
    bInterfaceSubClass: u8;

    /** USB-IF protocol code for this interface, qualified by the
    * bInterfaceClass and bInterfaceSubClass values */
    bInterfaceProtocol: u8;

    /** Index of string descriptor describing this interface */
    iInterface:         u8;

    /** Array of endpoint descriptors. This length of this array is determined
    * by the bNumEndpoints field. */
    endpoint:           *libusb_endpoint_descriptor;

    /** Extra descriptors. If libusb encounters unknown interface descriptors,
    * it will store them here, should you wish to parse them. */
    extra:              *u8;

    /** Length of the extra descriptors, in bytes. Must be non-negative. */
    extra_length:       s32;
}

/** \ingroup libusb_desc
* A collection of alternate settings for a particular USB interface.
*/
libusb_interface :: struct {
    /** Array of interface descriptors. The length of this array is determined
    * by the num_altsetting field. */
    altsetting:     *libusb_interface_descriptor;

    /** The number of alternate settings that belong to this interface.
    * Must be non-negative. */
    num_altsetting: s32;
}

/** \ingroup libusb_desc
* A structure representing the superspeed endpoint companion
* descriptor. This descriptor is documented in section 9.6.7 of
* the USB 3.0 specification. All multiple-byte fields are represented in
* host-endian format.
*/
libusb_ss_endpoint_companion_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:           u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_SS_ENDPOINT_COMPANION in
    * this context. */
    bDescriptorType:   u8;

    /** The maximum number of packets the endpoint can send or
    *  receive as part of a burst. */
    bMaxBurst:         u8;

    /** In bulk EP: bits 4:0 represents the maximum number of
    *  streams the EP supports. In isochronous EP: bits 1:0
    *  represents the Mult - a zero based value that determines
    *  the maximum number of packets within a service interval  */
    bmAttributes:      u8;

    /** The total number of bytes this EP will transfer every
    *  service interval. Valid only for periodic EPs. */
    wBytesPerInterval: u16;
}

/** \ingroup libusb_desc
* A generic representation of a BOS Device Capability descriptor. It is
* advised to check bDevCapabilityType and call the matching
* libusb_get_*_descriptor function to get a structure fully matching the type.
*/
libusb_bos_dev_capability_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:             u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_DEVICE_CAPABILITY
    * LIBUSB_DT_DEVICE_CAPABILITY in this context. */
    bDescriptorType:     u8;

    /** Device Capability type */
    bDevCapabilityType:  u8;

//     /** Device Capability data (bLength - 3 bytes) */
    dev_capability_data: *u8;// Incomplete array in C (zero-sized)
}

/** \ingroup libusb_desc
* A structure representing the Binary Device Object Store (BOS) descriptor.
* This descriptor is documented in section 9.6.2 of the USB 3.0 specification.
* All multiple-byte fields are represented in host-endian format.
*/
libusb_bos_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:         u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_BOS LIBUSB_DT_BOS
    * in this context. */
    bDescriptorType: u8;

    /** Length of this descriptor and all of its sub descriptors */
    wTotalLength:    u16;

    /** The number of separate device capability descriptors in
    * the BOS */
    bNumDeviceCaps:  u8;

//     /** bNumDeviceCap Device Capability Descriptors */
    dev_capability:  **libusb_bos_dev_capability_descriptor;// Incomplete array in C (zero-sized)
}

/** \ingroup libusb_desc
* A structure representing the USB 2.0 Extension descriptor
* This descriptor is documented in section 9.6.2.1 of the USB 3.0 specification.
* All multiple-byte fields are represented in host-endian format.
*/
libusb_usb_2_0_extension_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:            u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_DEVICE_CAPABILITY
    * LIBUSB_DT_DEVICE_CAPABILITY in this context. */
    bDescriptorType:    u8;

    /** Capability type. Will have value
    * \ref libusb_capability_type::LIBUSB_BT_USB_2_0_EXTENSION
    * LIBUSB_BT_USB_2_0_EXTENSION in this context. */
    bDevCapabilityType: u8;

    /** Bitmap encoding of supported device level features.
    * A value of one in a bit location indicates a feature is
    * supported; a value of zero indicates it is not supported.
    * See \ref libusb_usb_2_0_extension_attributes. */
    bmAttributes:       u32;
}

/** \ingroup libusb_desc
* A structure representing the SuperSpeed USB Device Capability descriptor
* This descriptor is documented in section 9.6.2.2 of the USB 3.0 specification.
* All multiple-byte fields are represented in host-endian format.
*/
libusb_ss_usb_device_capability_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:               u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_DEVICE_CAPABILITY
    * LIBUSB_DT_DEVICE_CAPABILITY in this context. */
    bDescriptorType:       u8;

    /** Capability type. Will have value
    * \ref libusb_capability_type::LIBUSB_BT_SS_USB_DEVICE_CAPABILITY
    * LIBUSB_BT_SS_USB_DEVICE_CAPABILITY in this context. */
    bDevCapabilityType:    u8;

    /** Bitmap encoding of supported device level features.
    * A value of one in a bit location indicates a feature is
    * supported; a value of zero indicates it is not supported.
    * See \ref libusb_ss_usb_device_capability_attributes. */
    bmAttributes:          u8;

    /** Bitmap encoding of the speed supported by this device when
    * operating in SuperSpeed mode. See \ref libusb_supported_speed. */
    wSpeedSupported:       u16;

    /** The lowest speed at which all the functionality supported
    * by the device is available to the user. For example if the
    * device supports all its functionality when connected at
    * full speed and above then it sets this value to 1. */
    bFunctionalitySupport: u8;

    /** U1 Device Exit Latency. */
    bU1DevExitLat:         u8;

    /** U2 Device Exit Latency. */
    bU2DevExitLat:         u16;
}

/** \ingroup libusb_desc
* A structure representing the Container ID descriptor.
* This descriptor is documented in section 9.6.2.3 of the USB 3.0 specification.
* All multiple-byte fields, except UUIDs, are represented in host-endian format.
*/
libusb_container_id_descriptor :: struct {
    /** Size of this descriptor (in bytes) */
    bLength:            u8;

    /** Descriptor type. Will have value
    * \ref libusb_descriptor_type::LIBUSB_DT_DEVICE_CAPABILITY
    * LIBUSB_DT_DEVICE_CAPABILITY in this context. */
    bDescriptorType:    u8;

    /** Capability type. Will have value
    * \ref libusb_capability_type::LIBUSB_BT_CONTAINER_ID
    * LIBUSB_BT_CONTAINER_ID in this context. */
    bDevCapabilityType: u8;

    /** Reserved field */
    bReserved:          u8;

    /** 128 bit UUID */
    ContainerID:        [16] u8;
}

libusb_control_setup :: struct {
    /** Request type. Bits 0:4 determine recipient, see
    * \ref libusb_request_recipient. Bits 5:6 determine type, see
    * \ref libusb_request_type. Bit 7 determines data transfer direction, see
    * \ref libusb_endpoint_direction.
    */
    bmRequestType: u8;

    /** Request. If the type bits of bmRequestType are equal to
    * \ref libusb_request_type::LIBUSB_REQUEST_TYPE_STANDARD
    * "LIBUSB_REQUEST_TYPE_STANDARD" then this field refers to
    * \ref libusb_standard_request. For other cases, use of this field is
    * application-specific. */
    bRequest:      u8;

    /** Value. Varies according to request */
    wValue:        u16;

    /** Index. Varies according to request, typically used to pass an index
    * or offset */
    wIndex:        u16;

    /** Number of bytes to transfer */
    wLength:       u16;
}

/* libusb */
libusb_context :: struct {}
libusb_device :: struct {}
libusb_device_handle :: struct {}

/** \ingroup libusb_lib
* Structure providing the version of the libusb runtime
*/
libusb_version :: struct {
    /** Library major version. */
    major:    u16;

    /** Library minor version. */
    minor:    u16;

    /** Library micro version. */
    micro:    u16;

    /** Library nano version. */
    nano:     u16;

    /** Library release candidate suffix string, e.g. "-rc4". */
    rc:       *u8 #align 16;

    /** For ABI compatibility only. */
    describe: *u8;
}

/** \ingroup libusb_dev
* Speed codes. Indicates the speed at which the device is operating.
*/
libusb_speed :: enum u32 {
    UNKNOWN    :: 0;

    LOW        :: 1;

    FULL       :: 2;

    HIGH       :: 3;

    SUPER      :: 4;

    SUPER_PLUS :: 5;

    LIBUSB_SPEED_UNKNOWN    :: UNKNOWN;

    LIBUSB_SPEED_LOW        :: LOW;

    LIBUSB_SPEED_FULL       :: FULL;

    LIBUSB_SPEED_HIGH       :: HIGH;

    LIBUSB_SPEED_SUPER      :: SUPER;

    LIBUSB_SPEED_SUPER_PLUS :: SUPER_PLUS;
}

/** \ingroup libusb_misc
* Error codes. Most libusb functions return 0 on success or one of these
* codes on failure.
* You can call libusb_error_name() to retrieve a string representation of an
* error code or libusb_strerror() to get an end-user suitable description of
* an error code.
*/
libusb_error :: enum s32 {
    SUCCESS             :: 0;

    ERROR_IO            :: -1;

    ERROR_INVALID_PARAM :: -2;

    ERROR_ACCESS        :: -3;

    ERROR_NO_DEVICE     :: -4;

    ERROR_NOT_FOUND     :: -5;

    ERROR_BUSY          :: -6;

    ERROR_TIMEOUT       :: -7;

    ERROR_OVERFLOW      :: -8;

    ERROR_PIPE          :: -9;

    ERROR_INTERRUPTED   :: -10;

    ERROR_NO_MEM        :: -11;

    ERROR_NOT_SUPPORTED :: -12;

    ERROR_OTHER         :: -99;

    LIBUSB_SUCCESS             :: SUCCESS;

    LIBUSB_ERROR_IO            :: ERROR_IO;

    LIBUSB_ERROR_INVALID_PARAM :: ERROR_INVALID_PARAM;

    LIBUSB_ERROR_ACCESS        :: ERROR_ACCESS;

    LIBUSB_ERROR_NO_DEVICE     :: ERROR_NO_DEVICE;

    LIBUSB_ERROR_NOT_FOUND     :: ERROR_NOT_FOUND;

    LIBUSB_ERROR_BUSY          :: ERROR_BUSY;

    LIBUSB_ERROR_TIMEOUT       :: ERROR_TIMEOUT;

    LIBUSB_ERROR_OVERFLOW      :: ERROR_OVERFLOW;

    LIBUSB_ERROR_PIPE          :: ERROR_PIPE;

    LIBUSB_ERROR_INTERRUPTED   :: ERROR_INTERRUPTED;

    LIBUSB_ERROR_NO_MEM        :: ERROR_NO_MEM;

    LIBUSB_ERROR_NOT_SUPPORTED :: ERROR_NOT_SUPPORTED;

    LIBUSB_ERROR_OTHER         :: ERROR_OTHER;
}

/** \ingroup libusb_asyncio
* Transfer type */
libusb_transfer_type :: enum u32 {
    CONTROL     :: 0;

    ISOCHRONOUS :: 1;

    BULK        :: 2;

    INTERRUPT   :: 3;

    BULK_STREAM :: 4;

    LIBUSB_TRANSFER_TYPE_CONTROL     :: CONTROL;

    LIBUSB_TRANSFER_TYPE_ISOCHRONOUS :: ISOCHRONOUS;

    LIBUSB_TRANSFER_TYPE_BULK        :: BULK;

    LIBUSB_TRANSFER_TYPE_INTERRUPT   :: INTERRUPT;

    LIBUSB_TRANSFER_TYPE_BULK_STREAM :: BULK_STREAM;
}

/** \ingroup libusb_asyncio
* Transfer status codes */
libusb_transfer_status :: enum u32 {
    COMPLETED :: 0;

    ERROR     :: 1;

    TIMED_OUT :: 2;

    CANCELLED :: 3;

    STALL     :: 4;

    NO_DEVICE :: 5;

    OVERFLOW  :: 6;

    LIBUSB_TRANSFER_COMPLETED :: COMPLETED;

    LIBUSB_TRANSFER_ERROR     :: ERROR;

    LIBUSB_TRANSFER_TIMED_OUT :: TIMED_OUT;

    LIBUSB_TRANSFER_CANCELLED :: CANCELLED;

    LIBUSB_TRANSFER_STALL     :: STALL;

    LIBUSB_TRANSFER_NO_DEVICE :: NO_DEVICE;

    LIBUSB_TRANSFER_OVERFLOW  :: OVERFLOW;
}

/** \ingroup libusb_asyncio
* libusb_transfer.flags values */
libusb_transfer_flags :: enum u32 {
    SHORT_NOT_OK    :: 1;

    FREE_BUFFER     :: 2;

    FREE_TRANSFER   :: 4;

    ADD_ZERO_PACKET :: 8;

    LIBUSB_TRANSFER_SHORT_NOT_OK    :: SHORT_NOT_OK;

    LIBUSB_TRANSFER_FREE_BUFFER     :: FREE_BUFFER;

    LIBUSB_TRANSFER_FREE_TRANSFER   :: FREE_TRANSFER;

    LIBUSB_TRANSFER_ADD_ZERO_PACKET :: ADD_ZERO_PACKET;
}

/** \ingroup libusb_asyncio
* Isochronous packet descriptor. */
libusb_iso_packet_descriptor :: struct {
    /** Length of data to request in this packet */
    length:        u32;

    /** Amount of data that was actually transferred */
    actual_length: u32;

    /** Status code for this packet */
    status:        libusb_transfer_status;
}

/** \ingroup libusb_asyncio
* Asynchronous transfer callback function type. When submitting asynchronous
* transfers, you pass a pointer to a callback function of this type via the
* \ref libusb_transfer::callback "callback" member of the libusb_transfer
* structure. libusb will call this function later, when the transfer has
* completed or failed. See \ref libusb_asyncio for more information.
* \param transfer The libusb_transfer struct the callback function is being
* notified about.
*/
libusb_transfer_cb_fn :: #type (transfer: *libusb_transfer) -> void #c_call;

/** \ingroup libusb_asyncio
* The generic USB transfer structure. The user populates this structure and
* then submits it in order to request a transfer. After the transfer has
* completed, the library populates the transfer with the results and passes
* it back to the user.
*/
libusb_transfer :: struct {
    /** Handle of the device that this transfer will be submitted to */
    dev_handle:      *libusb_device_handle;

    /** A bitwise OR combination of \ref libusb_transfer_flags. */
    flags:           u8;

    /** Address of the endpoint where this transfer will be sent. */
    endpoint:        u8;

    /** Type of the transfer from \ref libusb_transfer_type */
    type:            u8;

    /** Timeout for this transfer in milliseconds. A value of 0 indicates no
    * timeout. */
    timeout:         u32;

    /** The status of the transfer. Read-only, and only for use within
    * transfer callback function.
    *
    * If this is an isochronous transfer, this field may read COMPLETED even
    * if there were errors in the frames. Use the
    * \ref libusb_iso_packet_descriptor::status "status" field in each packet
    * to determine if errors occurred. */
    status:          libusb_transfer_status;

    /** Length of the data buffer. Must be non-negative. */
    length:          s32;

    /** Actual length of data that was transferred. Read-only, and only for
    * use within transfer callback function. Not valid for isochronous
    * endpoint transfers. */
    actual_length:   s32;

    /** Callback function. This will be invoked when the transfer completes,
    * fails, or is cancelled. */
    callback:        libusb_transfer_cb_fn;

    /** User context data. Useful for associating specific data to a transfer
    * that can be accessed from within the callback function.
    *
    * This field may be set manually or is taken as the `user_data` parameter
    * of the following functions:
    * - libusb_fill_bulk_transfer()
    * - libusb_fill_bulk_stream_transfer()
    * - libusb_fill_control_transfer()
    * - libusb_fill_interrupt_transfer()
    * - libusb_fill_iso_transfer() */
    user_data:       *void;

    /** Data buffer */
    buffer:          *u8;

    /** Number of isochronous packets. Only used for I/O with isochronous
    * endpoints. Must be non-negative. */
    num_iso_packets: s32;

//     /** Isochronous packet descriptors, for isochronous transfers only. */
    iso_packet_desc: *libusb_iso_packet_descriptor;// Incomplete array in C (zero-sized)
}

/** \ingroup libusb_misc
* Capabilities supported by an instance of libusb on the current running
* platform. Test if the loaded library supports a given capability by calling
* \ref libusb_has_capability().
*/
libusb_capability :: enum u32 {
    HAS_CAPABILITY                :: 0;

    HAS_HOTPLUG                   :: 1;

    HAS_HID_ACCESS                :: 256;

    SUPPORTS_DETACH_KERNEL_DRIVER :: 257;

    LIBUSB_CAP_HAS_CAPABILITY                :: HAS_CAPABILITY;

    LIBUSB_CAP_HAS_HOTPLUG                   :: HAS_HOTPLUG;

    LIBUSB_CAP_HAS_HID_ACCESS                :: HAS_HID_ACCESS;

    LIBUSB_CAP_SUPPORTS_DETACH_KERNEL_DRIVER :: SUPPORTS_DETACH_KERNEL_DRIVER;
}

/** \ingroup libusb_lib
*  Log message levels.
*/
libusb_log_level :: enum u32 {
    NONE    :: 0;

    ERROR   :: 1;

    WARNING :: 2;

    INFO    :: 3;

    DEBUG   :: 4;

    LIBUSB_LOG_LEVEL_NONE    :: NONE;

    LIBUSB_LOG_LEVEL_ERROR   :: ERROR;

    LIBUSB_LOG_LEVEL_WARNING :: WARNING;

    LIBUSB_LOG_LEVEL_INFO    :: INFO;

    LIBUSB_LOG_LEVEL_DEBUG   :: DEBUG;
}

/** \ingroup libusb_lib
*  Log callback mode.
*
*  Since version 1.0.23, \ref LIBUSB_API_VERSION >= 0x01000107
*
* \see libusb_set_log_cb()
*/
libusb_log_cb_mode :: enum u32 {
    GLOBAL  :: 1;

    CONTEXT :: 2;

    LIBUSB_LOG_CB_GLOBAL  :: GLOBAL;

    LIBUSB_LOG_CB_CONTEXT :: CONTEXT;
}

/** \ingroup libusb_lib
* Callback function for handling log messages.
* \param ctx the context which is related to the log message, or NULL if it
* is a global log message
* \param level the log level, see \ref libusb_log_level for a description
* \param str the log message
*
* Since version 1.0.23, \ref LIBUSB_API_VERSION >= 0x01000107
*
* \see libusb_set_log_cb()
*/
libusb_log_cb :: #type (ctx: *libusb_context, level: libusb_log_level, str: *u8) -> void #c_call;

libusb_init :: (ctx: **libusb_context) -> s32 #foreign libusb_1_0;
libusb_exit :: (ctx: *libusb_context) -> void #foreign libusb_1_0;

libusb_set_debug :: (ctx: *libusb_context, level: s32) -> void #foreign libusb_1_0;
libusb_set_log_cb :: (ctx: *libusb_context, cb: libusb_log_cb, mode: s32) -> void #foreign libusb_1_0;
libusb_get_version :: () -> *libusb_version #foreign libusb_1_0;
libusb_has_capability :: (capability: u32) -> s32 #foreign libusb_1_0;
libusb_error_name :: (errcode: s32) -> *u8 #foreign libusb_1_0;
libusb_setlocale :: (locale: *u8) -> s32 #foreign libusb_1_0;
libusb_strerror :: (errcode: s32) -> *u8 #foreign libusb_1_0;

libusb_get_device_list :: (ctx: *libusb_context, list: ***libusb_device) -> ssize_t #foreign libusb_1_0;

libusb_free_device_list :: (list: **libusb_device, unref_devices: s32) -> void #foreign libusb_1_0;

libusb_ref_device :: (dev: *libusb_device) -> *libusb_device #foreign libusb_1_0;
libusb_unref_device :: (dev: *libusb_device) -> void #foreign libusb_1_0;

libusb_get_configuration :: (dev: *libusb_device_handle, config: *s32) -> s32 #foreign libusb_1_0;

libusb_get_device_descriptor :: (dev: *libusb_device, desc: *libusb_device_descriptor) -> s32 #foreign libusb_1_0;

libusb_get_active_config_descriptor :: (dev: *libusb_device, config: **libusb_config_descriptor) -> s32 #foreign libusb_1_0;

libusb_get_config_descriptor :: (dev: *libusb_device, config_index: u8, config: **libusb_config_descriptor) -> s32 #foreign libusb_1_0;

libusb_get_config_descriptor_by_value :: (dev: *libusb_device, bConfigurationValue: u8, config: **libusb_config_descriptor) -> s32 #foreign libusb_1_0;

libusb_free_config_descriptor :: (config: *libusb_config_descriptor) -> void #foreign libusb_1_0;

libusb_get_ss_endpoint_companion_descriptor :: (ctx: *libusb_context, endpoint: *libusb_endpoint_descriptor, ep_comp: **libusb_ss_endpoint_companion_descriptor) -> s32 #foreign libusb_1_0;

libusb_free_ss_endpoint_companion_descriptor :: (ep_comp: *libusb_ss_endpoint_companion_descriptor) -> void #foreign libusb_1_0;

libusb_get_bos_descriptor :: (dev_handle: *libusb_device_handle, bos: **libusb_bos_descriptor) -> s32 #foreign libusb_1_0;

libusb_free_bos_descriptor :: (bos: *libusb_bos_descriptor) -> void #foreign libusb_1_0;
libusb_get_usb_2_0_extension_descriptor :: (ctx: *libusb_context, dev_cap: *libusb_bos_dev_capability_descriptor, usb_2_0_extension: **libusb_usb_2_0_extension_descriptor) -> s32 #foreign libusb_1_0;

libusb_free_usb_2_0_extension_descriptor :: (usb_2_0_extension: *libusb_usb_2_0_extension_descriptor) -> void #foreign libusb_1_0;

libusb_get_ss_usb_device_capability_descriptor :: (ctx: *libusb_context, dev_cap: *libusb_bos_dev_capability_descriptor, ss_usb_device_cap: **libusb_ss_usb_device_capability_descriptor) -> s32 #foreign libusb_1_0;

libusb_free_ss_usb_device_capability_descriptor :: (ss_usb_device_cap: *libusb_ss_usb_device_capability_descriptor) -> void #foreign libusb_1_0;

libusb_get_container_id_descriptor :: (ctx: *libusb_context, dev_cap: *libusb_bos_dev_capability_descriptor, container_id: **libusb_container_id_descriptor) -> s32 #foreign libusb_1_0;

libusb_free_container_id_descriptor :: (container_id: *libusb_container_id_descriptor) -> void #foreign libusb_1_0;

libusb_get_bus_number :: (dev: *libusb_device) -> u8 #foreign libusb_1_0;
libusb_get_port_number :: (dev: *libusb_device) -> u8 #foreign libusb_1_0;
libusb_get_port_numbers :: (dev: *libusb_device, port_numbers: *u8, port_numbers_len: s32) -> s32 #foreign libusb_1_0;

libusb_get_port_path :: (ctx: *libusb_context, dev: *libusb_device, path: *u8, path_length: u8) -> s32 #foreign libusb_1_0;
libusb_get_parent :: (dev: *libusb_device) -> *libusb_device #foreign libusb_1_0;
libusb_get_device_address :: (dev: *libusb_device) -> u8 #foreign libusb_1_0;
libusb_get_device_speed :: (dev: *libusb_device) -> s32 #foreign libusb_1_0;
libusb_get_max_packet_size :: (dev: *libusb_device, endpoint: u8) -> s32 #foreign libusb_1_0;

libusb_get_max_iso_packet_size :: (dev: *libusb_device, endpoint: u8) -> s32 #foreign libusb_1_0;

libusb_wrap_sys_device :: (ctx: *libusb_context, sys_dev: s64, dev_handle: **libusb_device_handle) -> s32 #foreign libusb_1_0;
libusb_open :: (dev: *libusb_device, dev_handle: **libusb_device_handle) -> s32 #foreign libusb_1_0;
libusb_close :: (dev_handle: *libusb_device_handle) -> void #foreign libusb_1_0;
libusb_get_device :: (dev_handle: *libusb_device_handle) -> *libusb_device #foreign libusb_1_0;

libusb_set_configuration :: (dev_handle: *libusb_device_handle, configuration: s32) -> s32 #foreign libusb_1_0;

libusb_claim_interface :: (dev_handle: *libusb_device_handle, interface_number: s32) -> s32 #foreign libusb_1_0;

libusb_release_interface :: (dev_handle: *libusb_device_handle, interface_number: s32) -> s32 #foreign libusb_1_0;

libusb_open_device_with_vid_pid :: (ctx: *libusb_context, vendor_id: u16, product_id: u16) -> *libusb_device_handle #foreign libusb_1_0;

libusb_set_interface_alt_setting :: (dev_handle: *libusb_device_handle, interface_number: s32, alternate_setting: s32) -> s32 #foreign libusb_1_0;

libusb_clear_halt :: (dev_handle: *libusb_device_handle, endpoint: u8) -> s32 #foreign libusb_1_0;

libusb_reset_device :: (dev_handle: *libusb_device_handle) -> s32 #foreign libusb_1_0;

libusb_alloc_streams :: (dev_handle: *libusb_device_handle, num_streams: u32, endpoints: *u8, num_endpoints: s32) -> s32 #foreign libusb_1_0;

libusb_free_streams :: (dev_handle: *libusb_device_handle, endpoints: *u8, num_endpoints: s32) -> s32 #foreign libusb_1_0;

libusb_dev_mem_alloc :: (dev_handle: *libusb_device_handle, length: size_t) -> *u8 #foreign libusb_1_0;

libusb_dev_mem_free :: (dev_handle: *libusb_device_handle, buffer: *u8, length: size_t) -> s32 #foreign libusb_1_0;

libusb_kernel_driver_active :: (dev_handle: *libusb_device_handle, interface_number: s32) -> s32 #foreign libusb_1_0;

libusb_detach_kernel_driver :: (dev_handle: *libusb_device_handle, interface_number: s32) -> s32 #foreign libusb_1_0;

libusb_attach_kernel_driver :: (dev_handle: *libusb_device_handle, interface_number: s32) -> s32 #foreign libusb_1_0;

libusb_set_auto_detach_kernel_driver :: (dev_handle: *libusb_device_handle, enable: s32) -> s32 #foreign libusb_1_0;

libusb_alloc_transfer :: (iso_packets: s32) -> *libusb_transfer #foreign libusb_1_0;
libusb_submit_transfer :: (transfer: *libusb_transfer) -> s32 #foreign libusb_1_0;
libusb_cancel_transfer :: (transfer: *libusb_transfer) -> s32 #foreign libusb_1_0;
libusb_free_transfer :: (transfer: *libusb_transfer) -> void #foreign libusb_1_0;
libusb_transfer_set_stream_id :: (transfer: *libusb_transfer, stream_id: u32) -> void #foreign libusb_1_0;

libusb_transfer_get_stream_id :: (transfer: *libusb_transfer) -> u32 #foreign libusb_1_0;

/* sync I/O */
libusb_control_transfer :: (dev_handle: *libusb_device_handle, request_type: u8, bRequest: u8, wValue: u16, wIndex: u16, data: *u8, wLength: u16, timeout: u32) -> s32 #foreign libusb_1_0;

libusb_bulk_transfer :: (dev_handle: *libusb_device_handle, endpoint: u8, data: *u8, length: s32, actual_length: *s32, timeout: u32) -> s32 #foreign libusb_1_0;

libusb_interrupt_transfer :: (dev_handle: *libusb_device_handle, endpoint: u8, data: *u8, length: s32, actual_length: *s32, timeout: u32) -> s32 #foreign libusb_1_0;

libusb_get_string_descriptor_ascii :: (dev_handle: *libusb_device_handle, desc_index: u8, data: *u8, length: s32) -> s32 #foreign libusb_1_0;

/* polling and timeouts */
libusb_try_lock_events :: (ctx: *libusb_context) -> s32 #foreign libusb_1_0;
libusb_lock_events :: (ctx: *libusb_context) -> void #foreign libusb_1_0;
libusb_unlock_events :: (ctx: *libusb_context) -> void #foreign libusb_1_0;
libusb_event_handling_ok :: (ctx: *libusb_context) -> s32 #foreign libusb_1_0;
libusb_event_handler_active :: (ctx: *libusb_context) -> s32 #foreign libusb_1_0;
libusb_interrupt_event_handler :: (ctx: *libusb_context) -> void #foreign libusb_1_0;
libusb_lock_event_waiters :: (ctx: *libusb_context) -> void #foreign libusb_1_0;
libusb_unlock_event_waiters :: (ctx: *libusb_context) -> void #foreign libusb_1_0;
libusb_wait_for_event :: (ctx: *libusb_context, tv: *timeval) -> s32 #foreign libusb_1_0;

libusb_handle_events_timeout :: (ctx: *libusb_context, tv: *timeval) -> s32 #foreign libusb_1_0;

libusb_handle_events_timeout_completed :: (ctx: *libusb_context, tv: *timeval, completed: *s32) -> s32 #foreign libusb_1_0;

libusb_handle_events :: (ctx: *libusb_context) -> s32 #foreign libusb_1_0;
libusb_handle_events_completed :: (ctx: *libusb_context, completed: *s32) -> s32 #foreign libusb_1_0;
libusb_handle_events_locked :: (ctx: *libusb_context, tv: *timeval) -> s32 #foreign libusb_1_0;

libusb_pollfds_handle_timeouts :: (ctx: *libusb_context) -> s32 #foreign libusb_1_0;
libusb_get_next_timeout :: (ctx: *libusb_context, tv: *timeval) -> s32 #foreign libusb_1_0;

/** \ingroup libusb_poll
* File descriptor for polling
*/
libusb_pollfd :: struct {
    /** Numeric file descriptor */
    fd:     s32;

    /** Event flags to poll for from <poll.h>. POLLIN indicates that you
    * should monitor this file descriptor for becoming ready to read from,
    * and POLLOUT indicates that you should monitor this file descriptor for
    * nonblocking write readiness. */
    events: s16;
}

/** \ingroup libusb_poll
* Callback function, invoked when a new file descriptor should be added
* to the set of file descriptors monitored for events.
* \param fd the new file descriptor
* \param events events to monitor for, see \ref libusb_pollfd for a
* description
* \param user_data User data pointer specified in
* libusb_set_pollfd_notifiers() call
* \see libusb_set_pollfd_notifiers()
*/
libusb_pollfd_added_cb :: #type (fd: s32, events: s16, user_data: *void) -> void #c_call;

/** \ingroup libusb_poll
* Callback function, invoked when a file descriptor should be removed from
* the set of file descriptors being monitored for events. After returning
* from this callback, do not use that file descriptor again.
* \param fd the file descriptor to stop monitoring
* \param user_data User data pointer specified in
* libusb_set_pollfd_notifiers() call
* \see libusb_set_pollfd_notifiers()
*/
libusb_pollfd_removed_cb :: #type (fd: s32, user_data: *void) -> void #c_call;

libusb_get_pollfds :: (ctx: *libusb_context) -> **libusb_pollfd #foreign libusb_1_0;

libusb_free_pollfds :: (pollfds: **libusb_pollfd) -> void #foreign libusb_1_0;
libusb_set_pollfd_notifiers :: (ctx: *libusb_context, added_cb: libusb_pollfd_added_cb, removed_cb: libusb_pollfd_removed_cb, user_data: *void) -> void #foreign libusb_1_0;

/** \ingroup libusb_hotplug
* Callback handle.
*
* Callbacks handles are generated by libusb_hotplug_register_callback()
* and can be used to deregister callbacks. Callback handles are unique
* per libusb_context and it is safe to call libusb_hotplug_deregister_callback()
* on an already deregistered callback.
*
* Since version 1.0.16, \ref LIBUSB_API_VERSION >= 0x01000102
*
* For more information, see \ref libusb_hotplug.
*/
libusb_hotplug_callback_handle :: s32;

/** \ingroup libusb_hotplug
*
* Since version 1.0.16, \ref LIBUSB_API_VERSION >= 0x01000102
*
* Hotplug events */
libusb_hotplug_event :: enum u32 {
    ARRIVED :: 1;

    LEFT    :: 2;

    LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED :: ARRIVED;

    LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT    :: LEFT;
}

/** \ingroup libusb_hotplug
*
* Since version 1.0.16, \ref LIBUSB_API_VERSION >= 0x01000102
*
* Hotplug flags */
libusb_hotplug_flag :: enum u32 {
    LIBUSB_HOTPLUG_ENUMERATE :: 1;
}

/** \ingroup libusb_hotplug
* Hotplug callback function type. When requesting hotplug event notifications,
* you pass a pointer to a callback function of this type.
*
* This callback may be called by an internal event thread and as such it is
* recommended the callback do minimal processing before returning.
*
* libusb will call this function later, when a matching event had happened on
* a matching device. See \ref libusb_hotplug for more information.
*
* It is safe to call either libusb_hotplug_register_callback() or
* libusb_hotplug_deregister_callback() from within a callback function.
*
* Since version 1.0.16, \ref LIBUSB_API_VERSION >= 0x01000102
*
* \param ctx            context of this notification
* \param device         libusb_device this event occurred on
* \param event          event that occurred
* \param user_data      user data provided when this callback was registered
* \returns bool whether this callback is finished processing events.
*                       returning 1 will cause this callback to be deregistered
*/
libusb_hotplug_callback_fn :: #type (ctx: *libusb_context, device: *libusb_device, event: libusb_hotplug_event, user_data: *void) -> s32 #c_call;

/** \ingroup libusb_hotplug
* Register a hotplug callback function
*
* Register a callback with the libusb_context. The callback will fire
* when a matching event occurs on a matching device. The callback is
* armed until either it is deregistered with libusb_hotplug_deregister_callback()
* or the supplied callback returns 1 to indicate it is finished processing events.
*
* If the \ref LIBUSB_HOTPLUG_ENUMERATE is passed the callback will be
* called with a \ref LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED for all devices
* already plugged into the machine. Note that libusb modifies its internal
* device list from a separate thread, while calling hotplug callbacks from
* libusb_handle_events(), so it is possible for a device to already be present
* on, or removed from, its internal device list, while the hotplug callbacks
* still need to be dispatched. This means that when using \ref
* LIBUSB_HOTPLUG_ENUMERATE, your callback may be called twice for the arrival
* of the same device, once from libusb_hotplug_register_callback() and once
* from libusb_handle_events(); and/or your callback may be called for the
* removal of a device for which an arrived call was never made.
*
* Since version 1.0.16, \ref LIBUSB_API_VERSION >= 0x01000102
*
* \param[in] ctx context to register this callback with
* \param[in] events bitwise or of hotplug events that will trigger this callback.
*            See \ref libusb_hotplug_event
* \param[in] flags bitwise or of hotplug flags that affect registration.
*            See \ref libusb_hotplug_flag
* \param[in] vendor_id the vendor id to match or \ref LIBUSB_HOTPLUG_MATCH_ANY
* \param[in] product_id the product id to match or \ref LIBUSB_HOTPLUG_MATCH_ANY
* \param[in] dev_class the device class to match or \ref LIBUSB_HOTPLUG_MATCH_ANY
* \param[in] cb_fn the function to be invoked on a matching event/device
* \param[in] user_data user data to pass to the callback function
* \param[out] callback_handle pointer to store the handle of the allocated callback (can be NULL)
* \returns LIBUSB_SUCCESS on success LIBUSB_ERROR code on failure
*/
libusb_hotplug_register_callback :: (ctx: *libusb_context, events: s32, flags: s32, vendor_id: s32, product_id: s32, dev_class: s32, cb_fn: libusb_hotplug_callback_fn, user_data: *void, callback_handle: *libusb_hotplug_callback_handle) -> s32 #foreign libusb_1_0;

/** \ingroup libusb_hotplug
* Deregisters a hotplug callback.
*
* Deregister a callback from a libusb_context. This function is safe to call from within
* a hotplug callback.
*
* Since version 1.0.16, \ref LIBUSB_API_VERSION >= 0x01000102
*
* \param[in] ctx context this callback is registered with
* \param[in] callback_handle the handle of the callback to deregister
*/
libusb_hotplug_deregister_callback :: (ctx: *libusb_context, callback_handle: libusb_hotplug_callback_handle) -> void #foreign libusb_1_0;

/** \ingroup libusb_hotplug
* Gets the user_data associated with a hotplug callback.
*
* Since version v1.0.24 \ref LIBUSB_API_VERSION >= 0x01000108
*
* \param[in] ctx context this callback is registered with
* \param[in] callback_handle the handle of the callback to get the user_data of
*/
libusb_hotplug_get_user_data :: (ctx: *libusb_context, callback_handle: libusb_hotplug_callback_handle) -> *void #foreign libusb_1_0;

/** \ingroup libusb_lib
* Available option values for libusb_set_option().
*/
libusb_option :: enum u32 {
    LOG_LEVEL           :: 0;

    USE_USBDK           :: 1;

    NO_DEVICE_DISCOVERY :: 2;

    MAX                 :: 3;

    LIBUSB_OPTION_LOG_LEVEL           :: LOG_LEVEL;

    LIBUSB_OPTION_USE_USBDK           :: USE_USBDK;

    LIBUSB_OPTION_NO_DEVICE_DISCOVERY :: NO_DEVICE_DISCOVERY;

    LIBUSB_OPTION_MAX                 :: MAX;
}

libusb_set_option :: (ctx: *libusb_context, option: libusb_option, __args: ..Any) -> s32 #foreign libusb_1_0;

#scope_file

libusb_1_0 :: #system_library "libusb-1.0";
