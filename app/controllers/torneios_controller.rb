class TorneiosController < ApplicationController
  before_action :set_torneio, only: %i[ show edit update destroy ]

  # GET /torneios or /torneios.json
  def index
    @torneios = Torneio.all
  end

  # GET /torneios/1 or /torneios/1.json
  def show
  end

  # GET /torneios/new
  def new
    @torneio = Torneio.new
  end

  # GET /torneios/1/edit
  def edit
  end

  # POST /torneios or /torneios.json
  def create
    @torneio = Torneio.new(torneio_params)

    respond_to do |format|
      if @torneio.save
        format.html { redirect_to @torneio, notice: "Torneio was successfully created." }
        format.json { render :show, status: :created, location: @torneio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @torneio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /torneios/1 or /torneios/1.json
  def update
    respond_to do |format|
      if @torneio.update(torneio_params)
        format.html { redirect_to @torneio, notice: "Torneio was successfully updated." }
        format.json { render :show, status: :ok, location: @torneio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @torneio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torneios/1 or /torneios/1.json
  def destroy
    @torneio.destroy!

    respond_to do |format|
      format.html { redirect_to torneios_path, status: :see_other, notice: "Torneio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_torneio
      @torneio = Torneio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def torneio_params
      params.expect(torneio: [ :nome, :descricao, :data_inicio, :data_fim, :organizador ])
    end
end
