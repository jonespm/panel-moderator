class CreateVipService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.vip_email) do |user|
        user.password = Rails.application.secrets.vip_password
        user.password_confirmation = Rails.application.secrets.vip_password
        user.vip!
      end
  end
end
