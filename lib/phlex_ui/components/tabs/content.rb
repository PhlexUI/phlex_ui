# frozen_string_literal: true

module PhlexUI::Components
  class Tabs::Content < Base
    def initialize(value:, **attrs)
      @value = value
      super(**attrs)
    end

    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          tabs_target: :content,
          value: @value
        },
        class: "mt-2 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 hidden"
      }
    end
  end
end
