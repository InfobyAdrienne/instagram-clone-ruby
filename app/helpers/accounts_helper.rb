module AccountsHelper

  def profile_picture account, width = 40
    image_path = account.image.present? ? account.image.thumb.url : "default.png"
    image_tag(image_path, width: width, class: "img-circle")
  end

end
