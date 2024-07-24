# frozen_string_literal: true

module PhlexUI
  class TypographyH2 < Base
    def view_template(&)
      h2(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "scroll-m-20 text-2xl font-semibold tracking-tight transition-colors first:mt-0 pb-4 border-b"
      }
    end
  end
end
