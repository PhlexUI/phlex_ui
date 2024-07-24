# frozen_string_literal: true

module PhlexUI
  class TypographyListItem < Base
    def view_template(&)
      li(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "leading-7"
      }
    end
  end
end
