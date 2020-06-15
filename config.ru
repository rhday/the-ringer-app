require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
    raise "Migrations are pending. Run 'rake db:migrate' to resolve this issue."
end 

use Rack::MethodOverride
use RingerTeamsController
use RingerController
use UsersController
use SessionsController
run ApplicationController
