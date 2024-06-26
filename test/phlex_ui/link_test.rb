# frozen_string_literal: true

require "test_helper"

class PhlexUI::LinkTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Link(href: "#") { "Link" }
    end

    assert_match(/Link/, output)
  end
end
