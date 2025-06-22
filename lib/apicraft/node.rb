# frozen_string_literal: true

module APICraft
  class Node < BasicObject
    class << self
      def define_plain_field(method, *args, &block)
        define_method(method) do |value, &block|
          instance_variable_set("@#{method}", block ? instance_exec(&block) : value)
        end
      end
    end
  end
end
