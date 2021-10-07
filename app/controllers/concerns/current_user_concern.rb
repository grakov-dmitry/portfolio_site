module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = 'Stranger Awesome'
    guest.first_name = 'Stranger'
    guest.last_name = 'Awesome'
    guest.email = 'guest@mail.com'
    guest
  end
end
