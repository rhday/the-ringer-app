require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
    raise "Migrations are pending. Run 'rake db:migrate' to resolve this issue."
end 

use UsersController
use SessionsController
run ApplicationController
