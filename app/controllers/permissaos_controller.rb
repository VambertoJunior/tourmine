class PermissaosController < ApplicationController
  before_action :set_permissao, only: %i[ show edit update destroy ]

  # GET /permissaos or /permissaos.json
  def index
    @permissaos = Permissao.all
  end

  # GET /permissaos/1 or /permissaos/1.json
  def show
  end

  # GET /permissaos/new
  def new
    @permissao = Permissao.new
  end

  # GET /permissaos/1/edit
  def edit
  end

  # POST /permissaos or /permissaos.json
  def create
    @permissao = Permissao.new(permissao_params)

    respond_to do |format|
      if @permissao.save
        format.html { redirect_to @permissao, notice: "Permissao was successfully created." }
        format.json { render :show, status: :created, location: @permissao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @permissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permissaos/1 or /permissaos/1.json
  def update
    respond_to do |format|
      if @permissao.update(permissao_params)
        format.html { redirect_to @permissao, notice: "Permissao was successfully updated." }
        format.json { render :show, status: :ok, location: @permissao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @permissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permissaos/1 or /permissaos/1.json
  def destroy
    @permissao.destroy!

    respond_to do |format|
      format.html { redirect_to permissaos_path, status: :see_other, notice: "Permissao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissao
      @permissao = Permissao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def permissao_params
      params.expect(permissao: [ :usuario_id, :papel ])
    end
end
