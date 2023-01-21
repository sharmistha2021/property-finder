module PropertiesHelper
    def property_thumbail
      img = property..photo.present? ?property.photo.thumb.url : "house1.png"
      image_tag img, class: "property-thumb"
    end
        
end
