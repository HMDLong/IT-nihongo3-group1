class FoodReviewsController < ApplicationController
  before_action :set_food_review, only: %i[ show edit update destroy ]

  # GET /food_reviews or /food_reviews.json
  def index
    @food_reviews = FoodReview.all
  end

  # GET /food_reviews/1 or /food_reviews/1.json
  def show
  end

  # GET /food_reviews/new
  def new
    @food_review = FoodReview.new
  end

  # GET /food_reviews/1/edit
  def edit
  end

  # POST /food_reviews or /food_reviews.json
  def create
    @food_review = FoodReview.new(food_review_params)

    respond_to do |format|
      if @food_review.save
        format.html { redirect_to @food_review, notice: "Food review was successfully created." }
        format.json { render :show, status: :created, location: @food_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_reviews/1 or /food_reviews/1.json
  def update
    respond_to do |format|
      if @food_review.update(food_review_params)
        format.html { redirect_to @food_review, notice: "Food review was successfully updated." }
        format.json { render :show, status: :ok, location: @food_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_reviews/1 or /food_reviews/1.json
  def destroy
    @food_review.destroy
    respond_to do |format|
      format.html { redirect_to food_reviews_url, notice: "Food review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_review
      @food_review = FoodReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_review_params
      params.require(:food_review).permit(:user_id, :food_id, :review)
    end
end
