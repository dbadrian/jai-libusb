COMPILE :: false;
COMPILE_DEBUG :: false;

LIBUSB_PATH :: "libusb/libusb";

// if the lib path is empty system_library will be used.
#if OS == .LINUX {
	LIB_PATH :: "";
} else #if OS == .WINDOWS {
	LIB_PATH :: "win";
} else {
	#assert(false);
}

DECLARATIONS_TO_OMIT :: string.[
    "libusb_config_descriptor"
];

#run {
    set_build_options_dc(.{do_output=false});
    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
    }
}

generate_bindings :: () -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;
	    generate_library_declarations = true;
		array_add(*libpaths, LIB_PATH);

        #if OS == .LINUX {
            output_filename = "generated_linux.jai";
            array_add(*libnames, "libusb-1.0.so");
        } else #if OS == .WINDOWS {
            output_filename = "generated_windows.jai";
        } else {
            assert(false);
        }

        array_add(*system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);
        array_add(*include_paths, LIBUSB_PATH);
        array_add(*source_files, tprint("%/libusb.h", LIBUSB_PATH));
        visitor = libusb_vistor;
        
        try_to_preserve_comments = true;
        generate_compile_time_struct_checks = false;
    }

    return generate_bindings(opts, output_filename);
}

#scope_file

libusb_vistor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result { 
    if !parent_decl {
        if array_find(DECLARATIONS_TO_OMIT, decl.name) {
            decl.decl_flags |= .OMIT_FROM_OUTPUT;
            return .STOP;
        }
    }

    return .RECURSE;
}

#import "Basic";
#import "Bindings_Generator";
#import "BuildCpp";
#import "Compiler";
#import "File";
#import "String";
#import "System";