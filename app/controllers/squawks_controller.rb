class SquawksController < ApplicationController
  before_action :set_squawk, only: [:show, :edit, :update, :destroy]

  def index
    @squawks = Squawk.all.order("created_at DESC")
  end

  def show
  end

  def new
    @squawk = Squawk.new
  end

  def edit
  end

  def create
    @squawk = Squawk.new(squawk_params)

    respond_to do |format|
      if @squawk.save
        format.html { redirect_to @squawk, notice: 'Squawk was successfully created.' }
        format.json { render :show, status: :created, location: @squawk }
      else
        format.html { render :new }
        format.json { render json: @squawk.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @squawk.update(squawk_params)
        format.html { redirect_to @squawk, notice: 'Squawk was successfully updated.' }
        format.json { render :show, status: :ok, location: @squawk }
      else
        format.html { render :edit }
        format.json { render json: @squawk.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @squawk.destroy
    respond_to do |format|
      format.html { redirect_to squawks_url, notice: 'Squawk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_squawk
      @squawk = Squawk.find(params[:id])
    end

    def squawk_params
      params.require(:squawk).permit(:name, :title, :content)
    end
end
