module ApplicationHelper

def gravatar_for(pal, option = { size: 80 })
  gravatar_id = Digest::MD5::hexdigest(pal.email.downcase)
  size = option[:size]
  gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  image_tag(gravatar_url, alt: pal.palname, class: "gravatar") 
end
end

