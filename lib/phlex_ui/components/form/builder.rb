# frozen_string_literal: true

module PhlexUI::Components
  class Form::Builder < Base
    def template(&block)
      render PhlexUI::Form.new(**attrs) do
        render PhlexUI::Form::Spacer.new do
          block.call
        end
      end
    end

    def input(name, label: nil, hint: false, error: nil, **input_attrs)
      name = name.to_s
      label ||= convert_name_to_label(name)

      render PhlexUI::Form::Item.new do
        render PhlexUI::Label.new(for: name) { label } if label
        render PhlexUI::Input.new(name: name, id: name, **input_attrs)
        render PhlexUI::Hint.new { hint } if hint
      end
    end

    def button(**button_attrs, &block)
      render PhlexUI::Button.new(**button_attrs, &block)
    end

    private

    def convert_name_to_label(name)
      name.to_s.split("_").map(&:capitalize).join(" ")
    end

    def default_attrs
      {}
    end
  end
end
