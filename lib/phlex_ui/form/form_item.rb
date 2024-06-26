# frozen_string_literal: true

module PhlexUI
  class FormItem < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "space-y-2"
      }
    end
  end
end
