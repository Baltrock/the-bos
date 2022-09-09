class InformationFormsController < ApplicationController
  before_action :set_information_form, only: %i[ show edit update destroy ]

  def index
    if current_user.admin?
      @information_forms = Information_form.all
    else
      @information_forms = Information_forms.where(user: current_user)
    end
  end
    @information_forms = InformationForm.all

  def show
    @information_forms = InformationForm.all
  end

  def new
    @information_form = InformationForm.new
  end

  def edit
  end

  def create

    @information_form = InformationForm.new(information_form_params)
    @information_form.user = current_user

    respond_to do |format|
      if @information_form.save
        format.html { redirect_to information_form_url(@information_form), notice: "Information form was successfully created." }
        format.json { render :show, status: :created, location: @information_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @information_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information_forms/1 or /information_forms/1.json
  def update
    respond_to do |format|
      if @information_form.update(information_form_params)
        format.html { redirect_to information_form_url(@information_form), notice: "Information form was successfully updated." }
        format.json { render :show, status: :ok, location: @information_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @information_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_forms/1 or /information_forms/1.json
  def destroy
    @information_form.destroy

    respond_to do |format|
      format.html { redirect_to information_forms_url, notice: "Information form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information_form
      @information_form = InformationForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def information_form_params
      params.require(:information_form).permit(:name, :address, :fuel_needed, :instructions_for_delivery, :comment)
    end
end
