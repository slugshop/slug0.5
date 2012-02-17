class CadetsController < ApplicationController
  # GET /cadets
  # GET /cadets.json
  def index
    @cadets = Cadet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cadets }
    end
  end

  # GET /cadets/1
  # GET /cadets/1.json
  def show
    @cadet = Cadet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cadet }
    end
  end

  # GET /cadets/new
  # GET /cadets/new.json
  def new
    @cadet = Cadet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cadet }
    end
  end

  # GET /cadets/1/edit
  def edit
    @cadet = Cadet.find(params[:id])
  end

  # POST /cadets
  # POST /cadets.json
  def create
    @cadet = Cadet.new(params[:cadet])

    respond_to do |format|
      if @cadet.save
        format.html { redirect_to @cadet, notice: 'Cadet was successfully created.' }
        format.json { render json: @cadet, status: :created, location: @cadet }
      else
        format.html { render action: "new" }
        format.json { render json: @cadet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cadets/1
  # PUT /cadets/1.json
  def update
    @cadet = Cadet.find(params[:id])

    respond_to do |format|
      if @cadet.update_attributes(params[:cadet])
        format.html { redirect_to @cadet, notice: 'Cadet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cadet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadets/1
  # DELETE /cadets/1.json
  def destroy
    @cadet = Cadet.find(params[:id])
    @cadet.destroy

    respond_to do |format|
      format.html { redirect_to cadets_url }
      format.json { head :no_content }
    end
  end
end
