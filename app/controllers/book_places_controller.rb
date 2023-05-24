class BookPlacesController < ApplicationController
  before_action :set_book_place, only: %i[ show edit update destroy ]

  # GET /book_places or /book_places.json
  def index
    @book_places = BookPlace.all
  end

  # GET /book_places/1 or /book_places/1.json
  def show
  end

  # GET /book_places/new
  def new
    @book_place = BookPlace.new
  end

  # GET /book_places/1/edit
  def edit
  end

  # POST /book_places or /book_places.json
  def create
    @book_place = BookPlace.new(book_place_params)

    respond_to do |format|
      if @book_place.save
        format.html { redirect_to book_place_url(@book_place), notice: "Book place was successfully created." }
        format.json { render :show, status: :created, location: @book_place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_places/1 or /book_places/1.json
  def update
    respond_to do |format|
      if @book_place.update(book_place_params)
        format.html { redirect_to book_place_url(@book_place), notice: "Book place was successfully updated." }
        format.json { render :show, status: :ok, location: @book_place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_places/1 or /book_places/1.json
  def destroy
    @book_place.destroy

    respond_to do |format|
      format.html { redirect_to book_places_url, notice: "Book place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_place
      @book_place = BookPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_place_params
      params.require(:book_place).permit(:library_id, :book_id, :floor_id, :shelve, :row)
    end
end
