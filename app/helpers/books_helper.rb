module BooksHelper

  def editable_note(note)
    on_the_spot_edit note, :content, :type => :textarea, :onblur => 'submit',
                    :url => {:controller => :notes, :action => :update },
                    :loadurl => note_url,
                    :display_text => note.display_content
  end



end
