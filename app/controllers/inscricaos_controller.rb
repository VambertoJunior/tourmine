class InscricaosController < ApplicationController
  before_action :set_inscricao, only: %i[ show edit update destroy ]

  # GET /inscricaos or /inscricaos.json
  def index
    @inscricaos = Inscricao.all
  end

  # GET /inscricaos/1 or /inscricaos/1.json
  def show
  end

  # GET /inscricaos/new
  def new
    @inscricao = Inscricao.new
  end

  # GET /inscricaos/1/edit
  def edit
  end

  # POST /inscricaos or /inscricaos.json
  def create
    @inscricao = Inscricao.new(inscricao_params)

    respond_to do |format|
      if @inscricao.save
        format.html { redirect_to @inscricao, notice: "Inscricao was successfully created." }
        format.json { render :show, status: :created, location: @inscricao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscricaos/1 or /inscricaos/1.json
  def update
    respond_to do |format|
      if @inscricao.update(inscricao_params)
        format.html { redirect_to @inscricao, notice: "Inscricao was successfully updated." }
        format.json { render :show, status: :ok, location: @inscricao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscricaos/1 or /inscricaos/1.json
  def destroy
    @inscricao.destroy!

    respond_to do |format|
      format.html { redirect_to inscricaos_path, status: :see_other, notice: "Inscricao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscricao
      @inscricao = Inscricao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def inscricao_params
      params.expect(inscricao: [ :participante, :torneio_id, :status ])
    end
end
