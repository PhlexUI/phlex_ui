# frozen_string_literal: true

module PhlexUI::Components
  class Typography::Blockquote < Base
    def template(&block)
      blockquote(**attrs, &block)
    end

    private

    def default_attrs
      {
        class: "mt-6 border-l-2 pl-6 italic"
      }
    end
  end
end
