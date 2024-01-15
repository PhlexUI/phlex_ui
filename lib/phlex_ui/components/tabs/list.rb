# frozen_string_literal: true

module PhlexUI::Components
  class Tabs::List < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "inline-flex h-9 items-center justify-center rounded-lg bg-muted p-1 text-muted-foreground"
      }
    end
  end
end
