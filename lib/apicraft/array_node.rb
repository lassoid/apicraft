# frozen_string_literal: true

module APICraft
  class ArrayNode < Node
    def element_node
      raise NotImplementedError
    end

    def element(&block)
      new_element = element_node.new
      new_element.instance_exec(&block)
      @elements << new_element

      new_element
    end
  end
end
