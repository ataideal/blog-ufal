class Site::ProfileController < SiteController
  before_action :authenticate_user!
end
