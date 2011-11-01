class Note < ActiveRecord::Base
  belongs_to :book

  def display_content

    "<pre>\n#{content.present? ? CGI::escapeHTML(content) : '' } </pre>".html_safe
  end
end
