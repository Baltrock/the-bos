class DashbaordFormsController < ApplicationController
  before_action :set_dashbaord_form, only: %i[ show edit update destroy ]

  # GET /dashbaord_forms or /dashbaord_forms.json
  def index
    @dashbaord_forms = DashbaordForm.all
  end

  # GET /dashbaord_forms/1 or /dashbaord_forms/1.json
  def show
  end

  # GET /dashbaord_forms/new
  def new
    @dashbaord_form = DashbaordForm.new
  end

  # GET /dashbaord_forms/1/edit
  def edit
  end

  # POST /dashbaord_forms or /dashbaord_forms.json
  def create
    @dashbaord_form = DashbaordForm.new(dashbaord_form_params)

    respond_to do |format|
      if @dashbaord_form.save
        format.html { redirect_to dashbaord_form_url(@dashbaord_form), notice: "Dashbaord form was successfully created." }
        format.json { render :show, status: :created, location: @dashbaord_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashbaord_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashbaord_forms/1 or /dashbaord_forms/1.json
  def update
    respond_to do |format|
      if @dashbaord_form.update(dashbaord_form_params)
        format.html { redirect_to dashbaord_form_url(@dashbaord_form), notice: "Dashbaord form was successfully updated." }
        format.json { render :show, status: :ok, location: @dashbaord_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashbaord_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashbaord_forms/1 or /dashbaord_forms/1.json
  def destroy
    @dashbaord_form.destroy

    respond_to do |format|
      format.html { redirect_to dashbaord_forms_url, notice: "Dashbaord form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashbaord_form
      @dashbaord_form = DashbaordForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashbaord_form_params
      params.require(:dashbaord_form).permit(:company_name, :company_address, :phone_number, :pounds_per_litre, :comment, :rating, :admin_id)
    end
end
