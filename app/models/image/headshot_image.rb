class Image::HeadshotImage < Image
  embedded_in :imageable, polymorphic: true
end
