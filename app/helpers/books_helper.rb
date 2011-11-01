module BooksHelper
  include Haml::Helpers

  def editable_note(note)
    logger.debug "#### editable_note: note = #{note.inspect}"

    find_and_preserve(on_the_spot_edit note, :content, :type => :textarea, :onblur => 'submit',
                        :url => {:controller => :notes, :action => :update },
                        :loadurl => note_content_url,
                        :display_text => note.display_content)
  end

  #def display_note_content(note)
  #  find_and_preserve("<pre>#{content.present? ? CGI::escapeHTML(content) : '' } </pre>")
  #end


end
