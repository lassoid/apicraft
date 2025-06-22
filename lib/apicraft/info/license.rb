# frozen_string_literal: true

module APICraft
  class Info
    class License < Node
      def name(value, &block)
        @name = block ? instance_exec(&block).to_s : value.to_s
      end

      def identifier(value, &block)
        @identifier = block ? instance_exec(&block).to_s : value.to_s
      end

      def url(value, &block)
        @url = block ? instance_exec(&block).to_s : value.to_s
      end
    end
  end
end
