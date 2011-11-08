class NotesController < ApplicationController

  # retrieve note content before editing
  def content
    klass, field, id = params[:id].split('__')
    @note = Note.find(id)

    render :text => @note.content
  end


  # POST /notes
  # POST /notes.json
  def create
    @book = Book.find(params[:book_id])
    @note = Note.new(:book_id => @book.id, :content => '')

    respond_to do |format|
      if @note.save
        #format.html { redirect_to @note, :notice => 'Note was successfully created.' }
        #format.json { render :json => @note, :status => :created, :location => @note }
        format.js
      else
        #format.html { render :action => "new" }
        #format.json { render :json => @note.errors, :status => :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /notes?id= ...
  # called from on_the_spot
  # to make sure we can return a correctly formatted view
  def update
    klass, field, id = params[:id].split('__')
    @note = current_user.notes.find(id)

    if @note.update_attributes(field => params[:value])
      render :text => "<pre>#{CGI::escapeHTML(@note.send(field))}</pre>", :status => 200
    else
      render :text => @note.errors.full_messages.join("\n"), :status => 422
    end
  end


  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    #@note = Note.find(params[:id])
    @note = current_user.notes.find(params[:id])
    @note.destroy

    respond_to do |format|
      #format.html { redirect_to notes_url }
      #format.json { head :ok }
      format.js
    end
  end
end
