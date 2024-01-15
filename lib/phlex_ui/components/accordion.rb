# frozen_string_literal: true

module PhlexUI::Components
  class Accordion < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "w-full"
      }
    end
  end
end
