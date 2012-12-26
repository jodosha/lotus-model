module Lotus
  module Model
    module Orm
      module Adapter
        def self.new(kind)
          require "lotus/model/orm/adapters/#{ kind }"

          case kind
          when :sequel
            Sequel::Model
          end
        end
      end
    end
  end
end
