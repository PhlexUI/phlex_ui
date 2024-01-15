# frozen_string_literal: true

module PhlexUI::Components
  class ContextMenu::Trigger < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          popover_target: "trigger",
          action: "contextmenu->popover#handleContextMenu"
        }
      }
    end
  end
end
