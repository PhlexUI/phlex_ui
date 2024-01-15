# frozen_string_literal: true

module PhlexUI::Components
  class Card::Header < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "flex flex-col space-y-1.5 p-6"
      }
    end
  end
end
