Paperclip.interpolates :category do |attachment, style|
  attachment.instance.imageable_type.downcase.pluralize
end

Paperclip.interpolates :owner_id do |attachment, style|
  attachment.instance.imageable_id
end
