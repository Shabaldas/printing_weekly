ActiveAdmin.setup do |config|
  config.namespace :drad do |admin|
    admin.build_menu :utility_navigation do |menu|
      admin.add_logout_button_to_menu menu
    end
  end

  config.logout_link_path = :destroy_user_session_path
  config.logout_link_method = :delete
  config.authentication_method = :authenticate_user!
  config.current_user_method = :current_user
  config.default_namespace = :drad
  # config.on_unauthorized_access = :access_denied
  # config.authorization_adapter = ActiveAdmin::CanCanAdapter

  config.comments = false
  config.batch_actions = true
  config.breadcrumb = false
  config.create_another = true
  config.footer = '© PW'
end