module AccountsHelper

  def profile_picture account, width = 40
    image_path = account.image.present? ? account.image.thumb.url : "default.png"
    image_tag(image_path, width: width, class: "img-circle")
  end

  def can_edit_profile? profile_id
    # the signed in account has to match that of the profile being viewed
    account_signed_in? && current_account.id == profile_id
  end 

end
