module ApplicationHelper

    #Return the gravatar in user
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(:email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
