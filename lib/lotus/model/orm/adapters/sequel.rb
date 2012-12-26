require 'sequel/model'

module Lotus
  module Model
    module ORM
      module Adapters
        module Sequel
          def set_table_name(klass)
            set_dataset pluralize(underscore(demodulize(klass.name))).to_sym
          end
        end
      end
    end
  end
end

Sequel::Model.extend(Lotus::Model::ORM::Adapters::Sequel)
