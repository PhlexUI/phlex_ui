# frozen_string_literal: true

module PhlexUI
  class Card::Header < Base
    def view_template(&block)
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
