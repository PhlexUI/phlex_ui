# frozen_string_literal: true

module PhlexUI::Components
  class Label < Base
    def template(&block)
      label(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
      }
    end
  end
end
