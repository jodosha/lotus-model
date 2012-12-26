require 'lotus-model'
require 'sequel'

RSpec.configure do |config|
  config.before(:all) do
    Lotus::Model::ORM.adapter = :sequel
    db = Sequel.sqlite

    db.create_table :flowers do
      primary_key :id
    end
  end
end
