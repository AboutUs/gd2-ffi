module CGD2
  
  extend FFI::Library
  ffi_lib_flags :now, :global
  ffi_lib [FFI.map_library_name("libgd.2"), FFI.map_library_name("libgd.so.2"), FFI.map_library_name("libgd.3"), FFI.map_library_name("libgd.so.3")]

  # BGD_DECLARE(gdImagePtr) gdImageCreate (int sx, int sy)
  attach_function :gdImageCreate, [:int, :int], :pointer
  attach_function :gdImageCreateTrueColor, [:int, :int], :pointer
  
  # int gdImageColorAllocate(gdImagePtr im, int r, int g, int b) (FUNCTION)
  attach_function :gdImageColorAllocate, [:pointer, :int, :int, :int], :int
  
  # void gdImageFilledRectangle(gdImagePtr im, int x1, int y1, int x2, int y2, int color) (FUNCTION)
  attach_function :gdImageFilledRectangle, [:pointer, :int, :int, :int, :int, :int], :void
  
  #char *gdImageStringFT(gdImagePtr im, int *brect, int fg, char *fontname, double ptsize, double angle, int x, int y, char *string) (FUNCTION)
  attach_function :gdImageStringFT, [:pointer, :pointer, :int, :string, :double, :double, :int, :int, :string], :pointer
  
  # void* gdImagePngPtr(gdImagePtr im, int *size) (FUNCTION)
  attach_function :gdImagePngPtr, [:pointer, :pointer], :pointer
  
  # gdImageDestroy(gdImagePtr im) (FUNCTION)
  attach_function :gdImageDestroy, [:pointer], :void
  
  attach_function :gdFree, [:pointer], :void
end