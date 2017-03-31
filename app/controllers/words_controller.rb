# Controller for words
class WordsController < ApplicationController
  let :admins, :all
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  # GET /words
  def index
    @words = Word.all
  end

  # GET /words/1
  def show; end

  # GET /words/new
  def new
    @word = Word.new
  end

  # GET /words/1/edit
  def edit; end

  # POST /words
  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html do
          redirect_to @word, notice: 'Word was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /words/1
  def update
    respond_to do |format|
      if @word.update(word_params)
        format.html do
          redirect_to @word, notice: 'Word was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /words/1
  def destroy
    @word.destroy
    respond_to do |format|
      format.html do
        redirect_to words_url, notice: 'Word was successfully destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_word
    @word = Word.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def word_params
    params.require(:word).permit(:word)
  end
end
