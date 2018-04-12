class Image::ProfileImage < Image
  embedded_in :imageable, polymorphic: true
end
