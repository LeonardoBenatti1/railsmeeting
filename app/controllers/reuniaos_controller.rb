class ReuniaosController < ApplicationController
  before_action :set_reuniao, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /reuniaos or /reuniaos.json
  def index
    @reuniaos = Reuniao.all
  end

  # GET /reuniaos/1 or /reuniaos/1.json
  def show
  end

  # GET /reuniaos/new
  def new
    @reuniao = Reuniao.new
  end

  # GET /reuniaos/1/edit
  def edit
  end

  # POST /reuniaos or /reuniaos.json
  def create
    @reuniao = Reuniao.new(reuniao_params)

    respond_to do |format|
      if @reuniao.save
        format.html { redirect_to @reuniao, notice: "Reuniao foi marcada com sucesso." }
        format.json { render :show, status: :created, location: @reuniao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reuniao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reuniaos/1 or /reuniaos/1.json
  def update
    respond_to do |format|
      if @reuniao.update(reuniao_params)
        format.html { redirect_to @reuniao, notice: "Reuniao atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @reuniao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reuniao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reuniaos/1 or /reuniaos/1.json
  def destroy
    @reuniao.destroy
    respond_to do |format|
      format.html { redirect_to reuniaos_url, notice: "Reuniao foi cancelada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reuniao
      @reuniao = Reuniao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reuniao_params
      params.require(:reuniao).permit(:nome_completo, :data, :descricao, :user_id)
    end

    def modal
    end
    
end
