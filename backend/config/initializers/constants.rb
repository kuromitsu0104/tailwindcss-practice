module Constants
  ip_usr = ENV['OME_API_ENDPOINT']
  APIS = {
    user: {
      site: ip_usr,
      element_name: 'users'
    }
  }.freeze
end
