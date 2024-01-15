# frozen_string_literal: true

module PhlexUI::Components
  class Accordion::DefaultContent < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "pb-4 pt-0 text-sm"
      }
    end
  end
end
