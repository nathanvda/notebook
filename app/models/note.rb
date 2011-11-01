class Note < ActiveRecord::Base
  belongs_to :book


  def display_content
    "<pre>#{content.present? && content.size > 0 ? CGI::escapeHTML(content) : '' } </pre>".html_safe
  end
end
