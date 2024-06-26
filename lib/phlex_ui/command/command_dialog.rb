# frozen_string_literal: true

module PhlexUI
  class CommandDialog < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {controller: "dialog"}
      }
    end
  end
end
