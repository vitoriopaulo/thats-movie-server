class MoviesController < ProtectedController
  before_action :set_movie, only: %i[show update destroy]

  # GET /movies
  def index
    @movies = current_user.movies

    render json: @movies
  end

  # GET /movies/1
  def show
    render json: current_user.movies.find(params[:id])
  end

  # POST /movies
  def create
    # binding.pry
        @movie = current_user.movies.build(movie_params)

        if @movie.save
          render json: @movie, status: :created
        else
          render json: @movie.errors, status: :unprocessable_entity
        end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    # binding.pry
    @movie.destroy
    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = current_user.movies.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:title, :sinopse, :year, :director, :actors, :poster, :trailer, :category, :status, :comment)
    end
    private :set_movie, :movie_params
end
