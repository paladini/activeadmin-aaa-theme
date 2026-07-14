require "active_admin"
require "active_admin_aaa_theme/version"

module ActiveAdminAaaTheme
  class Engine < ::Rails::Engine
    # Inheriting from ::Rails::Engine automatically hooks app/assets
    # into the Rails host application's asset search path.
  end
end
