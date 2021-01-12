# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Automaticlaly convert snake_case to camelCase
Jbuilder.key_format camelize: :lower