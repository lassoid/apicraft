# frozen_string_literal: true

module APICraft
  class Info
    class Contact < Node
      def name(value, &block)
        @name = block ? instance_exec(&block).to_s : value.to_s
      end

      def url(value, &block)
        @url = block ? instance_exec(&block).to_s : value.to_s
      end

      def email(value, &block)
        @email = block ? instance_exec(&block).to_s : value.to_s
      end
    end
  end
end
