module GD2
  class Image
    attr_reader :image_ptr
    
    def release ptr
      CGD2::gdImageDestroy ptr
    end
    
    def png
      size         = FFI::MemoryPointer.new(:pointer)
      png_pointer  = CGD2.gdImagePngPtr @image_ptr, size
      length       = size.get_int 0
      png_pointer.get_bytes 0, length
    ensure
      CGD2::gdFree png_pointer
    end
  end
  
  class Image::IndexedColor < Image
    
    def initialize width, height
      @image_ptr = FFI::AutoPointer.new  CGD2::gdImageCreate(width, height), self.method(:release)
    end
  end
  
  class Image::TrueColor < Image
    
    def initialize width, height
      @image_ptr = FFI::AutoPointer.new CGD2::gdImageCreateTrueColor(width, height), self.method(:release)
    end
  end
end