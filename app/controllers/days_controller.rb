class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]


  def summary
    # currentweek = xxx
    @thisweek = Week.where(:user_id => current_user.id )
    #@thisweek = Week.where(:week_num => (Date.today.strftime("%U").to_i), :user_id => current_user.id )

     #@days = current_user.days
     @days = Day.search_for(params[:q]).where(:user_id => current_user.id )
     @weeks = Week.search_for(params[:q]).where(:user_id => current_user.id )
    #binding.pry
      
  end  

  # GET /days
  # GET /days.json
  def index
    @days = current_user.days.paginate(page: params[:page], per_page: 7)
  
    #@products = Product.all.paginate(page: params[:page], per_page: 5)
    #find where user_id = current_user
    #@days = Day.where(:user_id => "1")
    #@days = Day.all
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    # # {date: 'asdf', task: 'asdf'}
    # new_params = day_params
    # # {date: 'asdf', task: 'asdf', user_id: 4}
    # new_params[:user_id] = current_user.id
    # @day = Day.new(day_params)

    @day = current_user.days.new(day_params)

    # @movie = Movie.new(movie_params)
    # if @movie.save
    #   redirect_to @movie
    # else
    #   render 'new'
    # end 

    respond_to do |format|
      if @day.save
        format.html { redirect_to days_path, notice: 'Day was successfully created.' }
        format.json { render action: 'show', status: :created, location: @day }
      else
        format.html { render action: 'new' }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:user_id,:date, :task)
    end
end
