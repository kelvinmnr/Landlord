class MaintanancesController < ApplicationController
  before_action :set_maintanance, only: [:show, :edit, :update, :destroy]


def index
	@maintanances = Maintanance.all
end


def new
	@maintanances = Maintanance.new
end

def edit
end

def create
    @maintanance = Maintanance.new(maintanance_params)
    respond_to do |format|
      if @maintanance.save
        format.html { redirect_to @maintanance, notice: 'Maintanance was successfully created.' }
        format.json { render :show, status: :created, location: @maintanance }
      else
        format.html { render :new }
        format.json { render json: @maintanance.errors, status: :unprocessable_entity }
      end
    end
end


def show
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintanance
      @maintanance = Maintanance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintanance_params
      params.fetch(:maintanance).permit(:name, :area, :problem)
    end
end
