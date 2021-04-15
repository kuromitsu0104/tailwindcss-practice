class User < ActiveResource::Base
  self.include_format_in_path = false
  self.site = Constants::APIS[:user][:site]
  self.element_name = Constants::APIS[:user][:element_name]

  def shape_account_id
    account_id&.sub(%r{accounts/}, '')
  end
end
