class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    @categories_by_priority = Category.ordered_by_priority.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def fashion
    @fashion = Category.fashion
    @fashion.each do |category|
      @category = category
    end
    render action: :show
  end

  def entertainment
    @entertainment = Category.entertainment
    @entertainment.each do |category|
      @category = category
    end
    render action: :show
  end

  def sports
    @sports = Category.sports
    @sports.each do |category|
      @category = category
    end
    render action: :show
  end

  def business
    @business = Category.business
    @business.each do |category|
      @category = category
    end
    render action: :show
  end

  def technology
    @technology = Category.technology
    @technology.each do |category|
      @category = category
    end
    render action: :show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :priority)
    end
end
