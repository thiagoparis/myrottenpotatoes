Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, 'HMDBLL85E0mLA46sB3OVn0PoJ', 'qSrBiuM9h5v2x6pp7cm99cDB1nZI7DqhkXx6Sak2vARZI2TJ5H',
    {
      :secure_image_url => 'true',
      :image_size => 'original',
      :autorize_params => {
        :force_login => 'true',
        :lang => 'pt'
      }
    }

end
