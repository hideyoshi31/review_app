class ReviewersController < ApplicationController
  before_action :set_reviewer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create, :view, :update]
  protect_from_forgery :except => [:create, :update]

  # GET /reviewers
  # GET /reviewers.json
  def index
    @reviewers = Reviewer.order(id: :desc).page(params[:page])
  end

  # GET /reviewers/1
  # GET /reviewers/1.json
  def show
  end


  # GET /reviewers/new
  def new
    @reviewer = Reviewer.new
  end

  # GET /reviewers/1/edit
  def edit
  end

  # POST /reviewers
  # POST /reviewers.json
  def create
    @reviewer = Reviewer.new(reviewer_params)

      if @reviewer.save
        render :text => "投稿を受付ました。"
      else
        #format.html { render :new }
        #format.json { render json: @reviewer.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /reviewers/1
  # PATCH/PUT /reviewers/1.json
  def update
    respond_to do |format|
      if @reviewer.update(reviewer_params)
        format.html { redirect_to @reviewer, notice: 'Reviewer was successfully updated.' }
        format.json { render :show, status: :ok, location: @reviewer }
      else
        format.html { render :edit }
        format.json { render json: @reviewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviewers/1
  # DELETE /reviewers/1.json
  def destroy
    @reviewer.destroy
    respond_to do |format|
      format.html { redirect_to reviewers_url, notice: 'Reviewer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def view
    @reviewers = Product.find(params[:id]).reviewers.order(id: :desc).page(params[:page])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviewer
      @reviewer = Reviewer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reviewer_params
      params.require(:reviewer).permit(:name, :star, :comment, :product_id, :vote_y, :vote_n, :hide)
    end
end
