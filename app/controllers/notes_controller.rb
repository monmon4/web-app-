class NotesController < ApplicationController
	before_action :set_pdf_file, only: [:create]
	def create
		@note= @pdf_file.notes.new(note_params)
    if @note.save
      redirect_to @pdf_file notice:"done"
    else
      redirect_to @pdf_file, alert:"fail"
    end
  end
  
  private
  def set_pdf_file
    @pdf_file=PdfFile.find(params[:pdf_file_id])
  end
  def note_params
    params.require(:note).permit(:note)
  end
  def note_parent
    params.permit(:pdf_file_id)
  end


end